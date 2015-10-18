prefix ?= /usr

.PHONY: install
install:
ifeq ($(shell uname -s),Darwin)
	/usr/bin/install -d "$(DESTDIR)$(prefix)/bin"
	/usr/bin/install -m755 consume "$(DESTDIR)$(prefix)/bin/consume"
	/usr/bin/install -d "$(DESTDIR)$(prefix)/share/zsh/site-functions"
	/usr/bin/install -m644 completion.zsh "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"
else
	install -Dm755 consume "$(DESTDIR)$(prefix)/bin/consume"
	install -Dm644 completion.zsh "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"
endif


.PHONY: uninstall
uninstall:
	rm -f "$(DESTDIR)$(prefix)/share/zsh/site-functions/_consume"
