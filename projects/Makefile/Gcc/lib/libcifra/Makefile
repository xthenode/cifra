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
# generic Gcc Makefile for cifra Library libcifra
########################################################################


#
# target
#
libcifra_LIBTARGET = libcifra.${LIBEXT}

########################################################################

#
# user c++ flags
#
libcifra_USRCXXFLAGS += \
${cifra_USRCXXFLAGS} \

#
# user defines
#
libcifra_USRDEFINES += \
${cifra_USRDEFINES} \

#
# user includes
#
libcifra_USRINCLUDES += \
${cifra_USRINCLUDES} \

#
# user libdirs
#
libcifra_USRLIBDIRS += \
${cifra_USRLIBDIRS} \

########################################################################

#
# Library .c sources
#
#libcifra_LIB_C_SOURCES += \
#${CIFRA_SRC}/cifra/base/Base.c \

#
# Library .cc sources
#
#libcifra_LIB_CC_SOURCES += \
#${CIFRA_SRC}/cifra/base/Base.cc \

#
# Library .cxx sources
#
#libcifra_LIB_CXX_SOURCES += \
#${CIFRA_SRC}/cifra/base/Base.cxx \

#
# Library .cpp sources
#
libcifra_LIB_CPP_SOURCES += \
${CIFRA_SRC}/xos/crypto/base.cpp \
${CIFRA_SRC}/xos/crypto/hash.cpp \
${CIFRA_SRC}/xos/crypto/random.cpp \
${CIFRA_SRC}/xos/lib/cifra/version.cpp \

#
# Library .m sources
#
#libcifra_LIB_M_SOURCES += \
#${CIFRA_SRC}/cifra/base/Base.m \

#
# Library .mm sources
#
#libcifra_LIB_MM_SOURCES += \
#${CIFRA_SRC}/cifra/base/Base.mm \


########################################################################
