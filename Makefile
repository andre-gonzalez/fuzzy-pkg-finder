PREFIX ?= /usr/local

install:
	install -Dm755 fpf -t $(DESTDIR)$(PREFIX)/bin

uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/fpf

.PHONY: install uninstall
