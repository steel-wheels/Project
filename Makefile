#
# Makefile
#


all:
	echo "make [status | build]"

status:
	(cd MultiDataKit/Project     && git status)
	(cd MultiUIKit/Project       && git status)
	(cd MultiGraphicsKit/Project       && git status)
	(cd JavaScriptKit/Project    && git status)
	(cd ShellKit/Project	     && git status)
	(cd JavaScriptShell/Project  && git status)
	#(cd ArisiaPlatform/Project  && git status)
	#(cd ArisiaCard/Project      && git status)

build: dummy
	(cd MultiDataKit/Project    && make -f ../Script/install.mk)
	(cd MultiUIKit/Project      && make -f ../Script/install.mk)
	(cd MultiGraphicsKit/Project      && make -f ../Script/install.mk)
	(cd JavaScriptKit/Project   && make -f ../Script/install.mk)
	(cd ShellKit/Project	    && make -f ../Script/install.mk)
	(cd JavaScriptShell/Project && make -f ../Script/install.mk)
	#(cd ArisiaPlatform/Project && make -f ../Script/install.mk)

clean: dummy
	(cd MultiDataKit/Project    && make -f ../Script/install.mk clean)
	(cd MultiUIKit/Project      && make -f ../Script/install.mk clean)
	(cd JavaScriptKit/Project   && make -f ../Script/install.mk clean)
	(cd ShellKit/Project	    && make -f ../Script/install.mk clean)
	(cd JavaScriptShell/Project && make -f ../Script/install.mk clean)
	#(cd ArisiaPlatform/Project && make -f ../Script/install.mk clean)

all_clean:
	(cd ../ ; rm -irf build)
	(cd $(HOME)/local/ ; rm -rf framrworks)
	(cd $(HOME)/Applications/ ; rm -rf JSTerminal.app)

dummy:

