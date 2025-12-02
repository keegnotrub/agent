NAME=agent
VERSION=0.0.2
AUTHOR=keegnotrub
URL=https://github.com/$(AUTHOR)/$(NAME)

DIRS=bin
INSTALL_FILES=`find $(DIRS) -type f 2>/dev/null`
PREFIX?=/usr/local

all:
install:
	for file in $(INSTALL_FILES); do cp $$file $(DESTDIR)$(PREFIX)/$$file; done
uninstall:
	for file in $(INSTALL_FILES); do rm -f $(DESTDIR)$(PREFIX)/$$file; done
.PHONY:
	install uninstall all
