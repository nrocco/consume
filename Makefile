prefix ?= /usr

ifeq ($(shell uname -s),Darwin)
	DIR=-d
else
	DIR=-D
endif

.PHONY: install
install:
	install $(DIR) -m755 consume "$(DESTDIR)$(prefix)/bin/consume"
	install $(DIR) -m644 completion.zsh "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"


.PHONY: uninstall
uninstall:
	rm -f "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"
