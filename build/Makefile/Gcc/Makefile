########################################################################
# Copyright (c) 1988-2020 $organization$
#
# This software is provided by the author and contributors ``as is''
# and any express or implied warranties, including, but not limited to,
# the implied warranties of merchantability and fitness for a particular
# purpose are disclaimed. In no event shall the author or contributors
# be liable for any direct, indirect, incidental, special, exemplary,
# or consequential damages (including, but not limited to, procurement
# of substitute goods or services; loss of use, data, or profits; or
# business interruption) however caused and on any theory of liability,
# whether in contract, strict liability, or tort (including negligence
# or otherwise) arising in any way out of the use of this software,
# even if advised of the possibility of such damage.
#
#   File: Makefile
#
# Author: $author$
#   Date: 4/21/2020
#
# build Gcc Makefile for cifra
########################################################################


########################################################################
# build nadir
#
# pkg-config --cflags --libs nadir
#

ifndef USE_HOME_BUILD_nadir
USE_HOME_BUILD_nadir = no
endif #ndef USE_HOME_BUILD_nadir

ifeq ($(USE_HOME_BUILD_nadir),yes)
#
# home build nadir
#
build_nadir_USRDEFINES += \

build_nadir_USRINCLUDES += \
-I$(HOME)/build/nadir/include \

build_nadir_USRCXXFLAGS += \

build_nadir_USRLIBDIRS += \
-L$(HOME)/build/nadir/lib \

build_nadir_LIBS += \
-lnadir \

build_nadir_FRAMEWORKS += \

else # eq ($(USE_HOME_BUILD_nadir),yes)
#
# build nadir
#
build_nadir_USRDEFINES += \

build_nadir_USRINCLUDES += \

build_nadir_USRCXXFLAGS += \

build_nadir_USRLIBDIRS += \

build_nadir_LIBS += \

build_nadir_FRAMEWORKS += \

endif # eq ($(USE_HOME_BUILD_nadir),yes)

########################################################################
# build cifra

# build cifra USRDEFINES
#
build_cifra_USRDEFINES += \
${build_nadir_USRDEFINES} \


# build cifra USRINCLUDES
#
build_cifra_USRINCLUDES += \
${build_nadir_USRINCLUDES} \


# build cifra USRCXXFLAGS
#
build_cifra_USRCXXFLAGS += \
${build_nadir_USRCXXFLAGS} \


# build cifra USRLIBDIRS
#
build_cifra_USRLIBDIRS += \
${build_nadir_USRLIBDIRS} \


# build cifra FRAMEWORKS
#
build_cifra_FRAMEWORKS += \
${build_nadir_FRAMEWORKS} \


# build cifra LIBS
#
build_cifra_LIBS += \
${build_nadir_LIBS} \
${build_cifra_FRAMEWORKS}
