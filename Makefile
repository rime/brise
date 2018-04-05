ifeq ($(SRCDIR),)
	SRCDIR=$(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
endif

# Tips: you can set OUTPUT to Rime user directory in the command line
ifeq ($(OUTPUT),)
	OUTPUT:=$(SRCDIR)/output
endif

ifeq ($(PREFIX),)
	PREFIX=/usr
endif

ifeq ($(RIME_DATA_DIR),)
	RIME_DATA_DIR=$(PREFIX)/share/rime-data
endif

preset extra all minimal build install clean:
	$(MAKE) -C plum OUTPUT=$(OUTPUT) $(@)

.PHONY: preset extra all minimal build install clean
