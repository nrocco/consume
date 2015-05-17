prefix ?= /usr

.PHONY: install
install:
	install -Dm755 consume "$(DESTDIR)$(prefix)/bin/consume"
	install -Dm644 completion.zsh "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"


.PHONY: uninstall
uninstall:
	rm -f "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"
