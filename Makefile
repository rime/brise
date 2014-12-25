ifeq (${SRCDIR},)
	SRCDIR=$(shell pwd)
endif
OUTPUT:=${SRCDIR}/output

ifeq (${PREFIX},)
	PREFIX=/usr
endif
ifeq (${RIME_DATA_DIR},)
	RIME_DATA_DIR=${PREFIX}/share/rime-data
endif

all:
	@echo "building rime data."
	@mkdir -p ${OUTPUT}
	@cp essay.txt  ${OUTPUT}
	@cp default.yaml ${OUTPUT}
	@cp symbols.yaml ${OUTPUT}
	@cp preset/*.yaml  ${OUTPUT}
	@cp supplement/*.yaml  ${OUTPUT}
	@mkdir -p ${OUTPUT}/opencc
	@cp opencc/*.json  ${OUTPUT}/opencc
	rime_deployer --build  ${OUTPUT}

# deprecated
essay.kct:
	@echo "generating essay.kct."
	chmod +x make_essay.sh
	./make_essay.sh

install:
	@echo "installing rime data into '${DESTDIR}${RIME_DATA_DIR}'."
	@install -d ${DESTDIR}${RIME_DATA_DIR}
	@install -m 644 ${OUTPUT}/*.* ${DESTDIR}${RIME_DATA_DIR}
	@install -d ${DESTDIR}${RIME_DATA_DIR}/opencc
	@install -m 644 ${OUTPUT}/opencc/*.* ${DESTDIR}${RIME_DATA_DIR}/opencc

clean:
	rm -Rf output > /dev/null 2>&1 || true

.PHONY: all install clean
