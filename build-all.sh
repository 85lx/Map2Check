#!/bin/bash
#
# Build Map2Check from scratch and setup environment
#
#  This program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2 of the License, or
#  (at your option) any later version.
#
#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with this program; if not, write to the Free Software
#  Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston,
#  MA 02110-1301, USA.

set -x

export PREFIX=`pwd`/release
export DEPENDENCIES=`pwd`/dependencies

export LD_LIBRARY_PATH="$PREFIX/lib:/lib/:$LD_LIBRARY_PATH"
export C_INCLUDE_PATH="$PREFIX/include:$C_INCLUDE_PATH"
export PKG_CONFIG_PATH="$PREFIX/lib/pkgconfig:$PREFIX/share/pkgconfig:$PKG_CONFIG_PATH"


LLVM_VERSION=3.8.1
RUNDIR=`pwd`
SRCDIR=`dirname $0`
ABS_RUNDIR=`readlink -f $RUNDIR`
ABS_SRCDIR=`readlink -f $SRCDIR`

# create prefix directory
mkdir -p $PREFIX/bin
mkdir -p $PREFIX/lib
mkdir -p $PREFIX/include

# create dependencies directory
#if [ -d "$FOLDER" ]; then
#	rm -rf $DEPENDENCIES/*
#	mkdir -p $DEPENDENCIES
#else
#	mkdir -p $DEPENDENCIES
#fi



git_clone_or_pull()
{

	REPO="$1"
	FOLDER="$2"
	shift;shift

	if [ -d "$FOLDER" ]; then
		if [ "x$UPDATE" = "x1" ]; then
			cd $FOLDER && git pull && cd -
		fi
	else
		git clone $REPO $FOLDER $@
	fi
}


git_submodule_init()
{
	cd "$SRCDIR"

	git submodule init || exitmsg "submodule init failed"
	git submodule update || exitmsg "submodule update failed"

	cd -
}


exitmsg()
{
	echo "$1" >/dev/stderr
	exit 1
}

build()
{

	if [ -f /proc/cpuinfo ]; then
    CPUS=`grep ^processor /proc/cpuinfo | wc -l`
	else
    CPUS=1
	fi

	make -j `expr $CPUS + 1` CFLAGS="$CFLAGS" CPPFLAGS="$CPPFLAGS" LDFLAGS="$LDFLAGS" $@ || exit 1
	return 0
}


#check()
#{
	#if ! wget --version &>/dev/null; then
		#if ! curl --version &>/dev/null; then
			#echo "Need wget or curl to download files"
			#exit 1
		#fi

		## try replace wget with curl
		#alias wget='curl -O'
	#fi

	#if ! python --version 2>&1 | grep -q 'Python 2'; then
		#echo "llvm-3.2 needs python 2 to build"
		#exit 1
	#fi

	#if ! bison --version &>/dev/null; then
		#echo "STP needs bison program"
		#exit 1
	#fi

	#if ! flex --version &>/dev/null; then
		#echo "STP needs flex program"
		#exit 1
	#fi

	#if [ "x$WITH_LLVM" != "x" ]; then
		#if [ ! -d "$WITH_LLVM" ]; then
			#exitmsg "Invalid LLVM directory given: $WITH_LLVM"
		#fi
	#fi
	#if [ "x$WITH_LLVM_SRC" != "x" ]; then
		#if [ ! -d "$WITH_LLVM_SRC" ]; then
			#exitmsg "Invalid LLVM src directory given: $WITH_LLVM_SRC"
		#fi
	#fi
	#if [ "x$WITH_LLVM_DIR" != "x" ]; then
		#if [ ! -d "$WITH_LLVM_DIR" ]; then
			#exitmsg "Invalid LLVM src directory given: $WITH_LLVM_DIR"
		#fi
	#fi
#}

build_llvm()
{


	if [ ! -d "$DEPENDENCIES/llvm-${LLVM_VERSION}" ]; then
		wget http://llvm.org/releases/${LLVM_VERSION}/llvm-${LLVM_VERSION}.src.tar.xz || exit 1
		wget http://llvm.org/releases/${LLVM_VERSION}/cfe-${LLVM_VERSION}.src.tar.xz || exit 1

		tar -xf llvm-${LLVM_VERSION}.src.tar.xz || exit 1
		tar -xf cfe-${LLVM_VERSION}.src.tar.xz || exit 1

        # rename llvm folder
		mv llvm-${LLVM_VERSION}.src llvm-${LLVM_VERSION}
		# move clang to llvm/tools and rename to clang
		mv cfe-${LLVM_VERSION}.src llvm-${LLVM_VERSION}/tools/clang

		rm -f llvm-${LLVM_VERSION}.src.tar.xz &>/dev/null || exit 1
		rm -f cfe-${LLVM_VERSION}.src.tar.xz &>/dev/null || exit 1
		mv llvm-${LLVM_VERSION}  $DEPENDENCIES/llvm-${LLVM_VERSION}
	else
		echo "LLVM folder already exists, proceding to compilation"
		if [ -d "$DEPENDENCIES/llvm-${LLVM_VERSION}" ]; then
			mkdir -p $DEPENDENCIES/llvm-build-cmake
		else
			rm -rf $DEPENDENCIES/llvm-build-cmake
			mkdir -p $DEPENDENCIES/llvm-build-cmake
		fi
	fi

#	mkdir -p $DEPENDENCIES/llvm-build-cmake
#	mv llvm-${LLVM_VERSION}  $DEPENDENCIES/llvm-${LLVM_VERSION}
	cd $DEPENDENCIES/llvm-build-cmake || exitmsg "downloading failed"

	# configure llvm
	if [ ! -d CMakeFiles ]; then
		cmake ../llvm-${LLVM_VERSION} \
			-DCMAKE_BUILD_TYPE=Release\
			-DLLVM_INCLUDE_EXAMPLES=OFF \
			-DLLVM_INCLUDE_TESTS=OFF \
			-DLLVM_ENABLE_TIMESTAMPS=OFF \
			-DLLVM_TARGETS_TO_BUILD="X86" \
			-DLLVM_ENABLE_PIC=ON \
			-DCMAKE_C_FLAGS_DEBUG="-O0 -g" \
			-DCMAKE_CXX_FLAGS_DEBUG="-O0 -g" || clean_and_exit
	fi

	# build llvm
	ONLY_TOOLS='opt clang llvm-link llvm-dis llvm-nm' build
	cd -
}

install_llvm()
{
	LLVM_LOCATION=$DEPENDENCIES/llvm-build-cmake
	cp $LLVM_LOCATION/bin/clang $PREFIX/bin/clang || exit 1
	cp $LLVM_LOCATION/bin/opt $PREFIX/bin/opt || exit 1
	cp $LLVM_LOCATION/bin/llvm-link $PREFIX/bin/llvm-link || exit 1
	cp $LLVM_LOCATION/bin/llvm-nm $PREFIX/bin/llvm-nm || exit 1

	export LLVM_DIR=$ABS_RUNDIR/llvm-build-cmake/share/llvm/cmake/
	export LLVM_BUILD_PATH=$ABS_RUNDIR/llvm-build-cmake/
	export LLVM_SRC_PATH="$ABS_RUNDIR/llvm-${LLVM_VERSION}/"
}

clean_and_exit()
{
	CODE="$1"	

	if [ "$2" = "git" ]; then
		#git clean -xdf		
		rm -rf .git
	#else
		#rm -rf *
	fi

	#exit $CODE
}

minisat()
{
    cd $DEPENDENCIES
    
	if [ ! -d "minisat" ]; then
		git clone https://github.com/stp/minisat.git
	fi
	cd minisat
	if [ ! -d build ]; then
		mkdir build 
	fi
	cd build
	cmake ..
	make
	sudo make install # as root
	sudo ldconfig # as root		
	cd -	
	clean_and_exit 1 "git"	
	cd ..		
}

stp()
{
    cd $DEPENDENCIES
	#git_clone_or_pull https://github.com/stp/stp.git stp
	#cd $DEPENDENCIES/stp || exitmsg "Cloning failed"

	#echo $PREFIX
	#if [ ! -d CMakeFiles ]; then
		#cmake . -DCMAKE_INSTALL_PREFIX=$PREFIX \
			#-DSTP_TIMESTAMPS:BOOL="OFF" \
			#-DCMAKE_CXX_FLAGS_RELEASE=-O2 \
			#-DCMAKE_C_FLAGS_RELEASE=-O2 \
			#-DCMAKE_BUILD_TYPE=Release \
			#-DBUILD_SHARED_LIBS:BOOL=OFF \
			#-DENABLE_PYTHON_INTERFACE:BOOL=OFF #|| clean_and_exit 1 "git"
	#fi

	#(build "OPTIMIZE=-O2 CFLAGS_M32=install" && make install) || exit 1
	# adicionar verificação se a pasta já existe
	if [ ! -d stp-2.1.2 ]; then
		wget https://github.com/stp/stp/archive/2.1.2.tar.gz
		tar -xzf 2.1.2.tar.gz
	fi
	
	cd stp-2.1.2
	if [ ! -d build ]; then
		mkdir build
	fi
	cd build
		
	cmake -G 'Unix Makefiles' \
			-DCMAKE_INSTALL_PREFIX=$PREFIX \
			-DBUILD_SHARED_LIBS=OFF \
			-DBUILD_STATIC_BIN=ON \
			-DENABLE_PYTHON_INTERFACE=OFF \
			..
	make install	
	cd -
	cd ..	
}

klee()
{
    # build klee
    cd $DEPENDENCIES
    if [ ! -d klee ]; then
		git_clone_or_pull "-b 3.0.8 https://github.com/rafaelsa94/klee.git" klee || exitmsg "Cloning failed"
	fi

	if [ ! -d $DEPENDENCIES/klee-build ]; then
		mkdir -p $DEPENDENCIES/klee-build/
	fi
	
	cd $DEPENDENCIES/klee-build/

	if [ ! -d CMakeFiles ]; then
		cmake ../klee -DCMAKE_INSTALL_PREFIX=$PREFIX \
			-DCMAKE_BUILD_TYPE=Release \
			-DKLEE_RUNTIME_BUILD_TYPE=Release+Asserts \
			-DENABLE_SOLVER_STP=ON \
			-DSTP_DIR=`pwd`/../stp \
			-DLLVM_CONFIG_BINARY=`pwd`/../llvm-build-cmake/bin/llvm-config \
			-DENABLE_UNIT_TESTS=OFF 		
	fi


	make -C runtime -f Makefile.cmake.bitcode clean 2>/dev/null
	make -C runtime -f Makefile.cmake.bitcode clean 2>/dev/null
	rm -f Release+Asserts/lib/klee-libc.bc* 2>/dev/null

	pwd
	(build && make install) || exit 1
	
	cd $DEPENDENCIES/klee
	pwd		
	clean_and_exit 1 "git"
	
	cd -
		
	#checking klee installation in lib64
	if [ -d $PREFIX/lib64 ]; then
		if [ -d $PREFIX/lib/klee ]; then
			rm -rf $PREFIX/lib/klee
			mv $PREFIX/lib64/* $PREFIX/lib/
		fi
		rm -rf $PREFIX/lib64
	fi
		
}

map2check() {
    cd $RUNDIR
	./build-map2check.sh

}

gtest() {
	tgest=$(locate -c libgtest)
	if [ ! ${tgest} -gt 0  ]; then
		cd /usr/src/gtest
		sudo cmake CMakeLists.txt
		sudo make

		# copy or symlink libgtest.a and libgtest_main.a to your /usr/lib folder
		sudo cp *.a /usr/lib
	
		cd -
	fi
}

build_llvm
install_llvm
minisat
gtest
stp
klee
#map2check

# echo $LD_LIBRARY_PATH
