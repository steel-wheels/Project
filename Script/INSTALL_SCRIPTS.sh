#/bin/bash

THIS=$0
PROJECT_DIR=$1
SCRIPT_DIR=$2

function error(){
	echo "${THIS} [ERROR] $*" >& 2
	exit 1
}

function check_non_empty(){
	name=$1
	string=$2
	if [ "x$string" = "x" ] ; then
		error "$name is not given"
	fi
}

function check_dir(){
	name=$1
	dir=$2
	if [ ! -d $dir ] ; then
		error "$name \"$dir\" is Not found"
	fi
}

check_non_empty "Project directory" $PROJECT_DIR
check_dir "Project directory" $PROJECT_DIR

check_non_empty "Script directory" $SCRIPT_DIR

OSX_DIR="${PROJECT_DIR}/OSX"
if [ -d $OSX_DIR ] ; then
	HAS_OSX=YES
else
	HAS_OSX=NO
fi

IOS_DIR="${PROJECT_DIR}/iOS"
if [ -d $IOS_DIR ] ; then
	HAS_IOS=YES
else
	HAS_IOS=NO
fi

if [ $HAS_OSX = "YES" ] && [ $HAS_IOS = "YES" ] ; then
	HAS_BOTH=YES
else
	HAS_BOTH=NO
fi

ABS_SCRIPT_DIR="${PROJECT_DIR}/${SCRIPT_DIR}"
check_dir "Script directory" $ABS_SCRIPT_DIR

echo "Project directory         : $PROJECT_DIR"
if [ "${HAS_OSX}" = "YES" ] ; then
	echo "Project directory for OSX : $OSX_DIR"
fi
if [ "${HAS_IOS}" = "YES" ] ; then
	echo "Project directory for iOS : $IOS_DIR"
fi
echo "Relative Script directory : $SCRIPT_DIR"
echo "Script directory          : $ABS_SCRIPT_DIR"

if [ $HAS_BOTH = "YES" ] ; then
	TARGET="osx ios"
elif [ $HAS_OSX = "YES" ] ; then
	TARGET="osx"
elif [ $HAS_IOS = "YES" ] ; then
	TARGET="ios"
else
	error "No target"
fi

if sed -e "s/@OSX_DIR@/OSX/" \
       -e "s/@IOS_DIR@/iOS/" \
       -e "s/@TARGET@/${TARGET}/" \
       -e "s!@SCRIPT_DIR@!$SCRIPT_DIR!" \
       Script/build.mk.in > Script/build.mk ; then
		echo "generate Script/build.mk"
else
	exit 1
fi

install -C ./Script/export_env.sh $ABS_SCRIPT_DIR
if [ "${HAS_OSX}" = "YES" ] ; then
	install -C ./Script/install_osx.mk $ABS_SCRIPT_DIR
fi
if [ "${HAS_IOS}" = "YES" ] ; then
	install -C ./Script/install_ios.mk $ABS_SCRIPT_DIR
fi
install -C ./Script/build.mk $ABS_SCRIPT_DIR

exit 0

