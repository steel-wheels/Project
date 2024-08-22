#
# Makefile.inc
#

inc_opt	= 

DEF_TOP = https://github.com/steel-wheels

def_opt = \
 -D ARISIA_TOP=$(DEF_TOP)/Arisia \
 -D ARISIACARD_TOP=$(DEF_TOP)/Arisia/tree/main/ArisiaCard \
 -D ARISIALIB_TOP=$(DEF_TOP)/Arisia/tree/main/ArisiaLibrary \
 -D ARISIACOMP_TOP=$(DEF_TOP)/Arisia/tree/main/ArisiaComponent \
 -D ARISIATOOLS_TOP=$(DEF_TOP)/Arisia/tree/main/ArisiaTools \
 -D KIWISCRIPT_TOP=$(DEF_TOP)/KiwiScript \
 -D KIWILIB_TOP=$(DEF_TOP)/KiwiScript/tree/main/KiwiLibrary \
 -D KIWIENGINE_TOP=$(DEF_TOP)/KiwiScript/tree/main/KiwiEngine \
 -D KIWITOOLS_TOP=$(DEF_TOP)/KiwiScript/tree/main/KiwiTools \
 -D COBALT_TOP=$(DEF_TOP)/Cobalt \
 -D COCONUT_TOP=$(DEF_TOP)/Coconut \
 -D COCONUT_DATA_TOP=$(DEF_TOP)/Coconut/tree/main/CoconutData \
 -D COCONUT_DATABASE_TOP=$(DEF_TOP)/Coconut/tree/main/CoconutDatabase

m4_opt  = -P $(inc_opt) $(def_opt)

%.md : %.md4
	m4 $(m4_opt) $< > $@

