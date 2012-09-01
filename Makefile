ifeq (${SRCDIR},)
	SRCDIR=$(shell pwd)
endif
DATA:=${SRCDIR}/data

all:
	@echo "building rime data"
	@mkdir -p ${DATA}
	@cp default.yaml ${DATA}
	@cp essay.kct  ${DATA}
	@cp supplement/*.yaml  ${DATA}
	@cp preset/*.yaml  ${DATA}
	rime_deployer --build  ${DATA}

install:
	@echo "installing rime data"
	@install -d ${DESTDIR}/usr/share/rime-data
	@install ${DATA}/* ${DESTDIR}/usr/share/rime-data
