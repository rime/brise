ifeq (${SRCDIR},)
	SRCDIR=$(shell pwd)
endif
DATA:=${SRCDIR}/data

ifeq (${PREFIX},)
	PREFIX=/usr
endif
ifeq (${RIME_DATA_DIR},)
	RIME_DATA_DIR=${PREFIX}/share/rime-data
endif

all:
	@echo "building rime data."
	@mkdir -p ${DATA}
	@cp essay.txt  ${DATA}
	@cp default.yaml ${DATA}
	@cp symbols.yaml ${DATA}
	@cp preset/*.yaml  ${DATA}
	@cp supplement/*.yaml  ${DATA}
	rime_deployer --build  ${DATA}

# deprecated
essay.kct:
	@echo "generating essay.kct."
	chmod +x make_essay.sh
	./make_essay.sh

install:
	@echo "installing rime data into '${DESTDIR}${RIME_DATA_DIR}'."
	@install -d ${DESTDIR}${RIME_DATA_DIR}
	@install -m 644 ${DATA}/* ${DESTDIR}${RIME_DATA_DIR}
