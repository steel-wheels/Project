#
# Makefile
#


all:
	echo "make [status | build]"

status:
	(cd MultiDataKit/Project  && git status)
	(cd MultiUIKit/Project    && git status)
	(cd MultiFrameKit/Project && git status)
	(cd ArisiaPlatform/Project  && git status)
	(cd ArisiaCard/Project  && git status)

build: dummy
	(cd MultiDataKit/Project  && make -f ../Script/install.mk)
	(cd MultiUIKit/Project    && make -f ../Script/install.mk)
	(cd MultiFrameKit/Project && make -f ../Script/install.mk)
	(cd ArisiaPlatform/Project  && make -f ../Script/install.mk)

clean: dummy
	(cd MultiDataKit/Project  && make -f ../Script/install.mk clean)
	(cd MultiUIKit/Project    && make -f ../Script/install.mk clean)
	(cd MultiFrameKit/Project && make -f ../Script/install.mk clean)
	(cd ArisiaPlatform/Project  && make -f ../Script/install.mk clean)

all_clean:
	(cd ../ ; rm -irf build)

dummy:

