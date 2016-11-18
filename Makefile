RIME_DATA_PROJECTS := \
	array \
	bopomofo \
	cangjie \
	combo-pinyin \
	double-pinyin \
	emoji \
	ipa \
	jyutping \
	luna-pinyin \
	middle-chinese \
	pinyin-simp \
	prelude \
	quick \
	scj \
	soutzoe \
	stenotype \
	stroke \
	terra-pinyin \
	wubi \
	wugniu \

ifeq ($(SRCDIR),)
	SRCDIR=$(shell pwd)
endif
OUTPUT:=$(SRCDIR)/output

ifeq ($(PREFIX),)
	PREFIX=/usr
endif
ifeq ($(RIME_DATA_DIR),)
	RIME_DATA_DIR=$(PREFIX)/share/rime-data
endif

all:
	@echo "building rime data."
	@mkdir -p $(OUTPUT)
	@cp essay/essay.txt $(OUTPUT)
	@for p in $(RIME_DATA_PROJECTS); do cp $$p/*.yaml $(OUTPUT); done
	rime_deployer --build $(OUTPUT)

install:
	@echo "installing rime data to '$(DESTDIR)$(RIME_DATA_DIR)'."
	@install -d $(DESTDIR)$(RIME_DATA_DIR)
	@install -m 644 $(OUTPUT)/*.* $(DESTDIR)$(RIME_DATA_DIR)

clean:
	rm -rf $(OUTPUT) > /dev/null 2>&1 || true

.PHONY: all install clean
