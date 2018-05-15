ifeq ($(SRCDIR),)
	SRCDIR := $(shell dirname $(realpath $(lastword $(MAKEFILE_LIST))))
endif

# Tips: you can set OUTPUT to Rime user directory in the command line
ifeq ($(OUTPUT),)
	OUTPUT := $(SRCDIR)/output
endif

ifeq ($(PREFIX),)
	PREFIX := /usr
endif

ifeq ($(RIME_DATA_DIR),)
	RIME_DATA_DIR := $(PREFIX)/share/rime-data
endif

# `build_bin=1 make` would build binaries for input schemas enabled by default.
# Note this doesn't work for `extra`, because non of the extra input schemas are
# enabled by default.
all preset extra minimal:
	$(MAKE) -C plum OUTPUT=$(OUTPUT) $(@)$${build_bin:+-bin}

install clean:
	$(MAKE) -C plum OUTPUT=$(OUTPUT) $(@)

VERSION = $(shell date "+%Y%m%d")

dist:
	git submodule update --init
	$(MAKE) -C plum OUTPUT=$(OUTPUT) all
	tar czf brise-$(VERSION).tar.gz \
	  --exclude=.git \
	  --exclude=output \
	  --exclude='brise-*.tar.gz' \
	  -C .. brise

.PHONY: all preset extra minimal install clean dist
