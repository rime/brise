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
	@cp default.yaml ${DATA}
	@cp symbols.yaml ${DATA}
	@cp essay.kct  ${DATA}
	@cp supplement/*.yaml  ${DATA}
	@cp preset/*.yaml  ${DATA}
	rime_deployer --build  ${DATA}

install:
	@echo "installing rime data into '${DESTDIR}${RIME_DATA_DIR}'."
	@install -d ${DESTDIR}${RIME_DATA_DIR}
	@install -m 644 ${DATA}/* ${DESTDIR}${RIME_DATA_DIR}
