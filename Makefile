#
# Makefile
#


all:
	echo "make [status | build]"

status:
	(cd MultiDataKit/Project && git status)
	(cd MultiUIKit/Project   && git status)

build: dummy
	(cd MultiDataKit/Project && make -f ../Script/install.mk)
	(cd MultiUIKit/Project   && make -f ../Script/install.mk)

clean: dummy
	(cd MultiDataKit/Project && make -f ../Script/install.mk clean)
	(cd MultiUIKit/Project   && make -f ../Script/install.mk clean)

dummy:

