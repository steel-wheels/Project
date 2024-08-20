# Makefile

TAG = rel_20210505

all: coconut cobalt kiwiscript kiwicontrols arisia

cobalt: dummy
	(cd Cobalt && make -f Script/install_all.mk)

coconut: dummy
	(cd Coconut && make -f Script/install_all.mk)	

kiwiscript: dummy
	(cd KiwiScript && make -f Script/install_all.mk)

kiwicontrols: dummy
	(cd KiwiControls && make -f Script/install_all.mk)

arisia: Arisia/ArisiaLibrary/Resource/Library/types/KiwiLibrary.d.ts \
        Arisia/ArisiaLibrary/Resource/Library/KiwiLibrary.js
	(cd Arisia && make -f Script/install_all.mk)

Arisia/ArisiaLibrary/Resource/Library/types/KiwiLibrary.d.ts: \
	KiwiScript/KiwiLibrary/Resource/Library/types/KiwiLibrary.d.ts
	cp $< $@

Arisia/ArisiaLibrary/Resource/Library/KiwiLibrary.js: \
	KiwiScript/KiwiLibrary/Resource/Library/KiwiLibrary.js
	cp $< $@

clean:
	(cd ~ ; rm -rf build)
	(cd ~ ; mkdir ~/build)
	(cd ~/Library ; rm -rf Frameworks)
	(cd ~/Library ; mkdir Frameworks)

status: dummy
	(cd Coconut ; git status)
	(cd Cobalt ; git status)
	(cd KiwiScript ; git status)
	(cd KiwiControls ; git status)
	(cd Arisia ; git status)

dummy:

