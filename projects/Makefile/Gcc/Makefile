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
# generic Gcc Makefile for cifra
########################################################################

OTHER_VERSION_PKG = ${PKG}
OTHER_DEPENDS_PKG = ${PKG}/..
OTHER_THIRDPARTY_NAME = thirdparty
OTHER_THIRDPARTY_VERSION_PKG = ${OTHER_VERSION_PKG}/${OTHER_THIRDPARTY_NAME}

CIFRA_PKG = ${PKG}
CIFRA_SRC = ${CIFRA_PKG}/source
CIFRA_BLD = ${CIFRA_PKG}/${BLD}/${BUILD_TYPE}
CIFRA_LIB = ${CIFRA_BLD}/lib
CIFRA_BIN = ${CIFRA_BLD}/bin

########################################################################
# nadir
NADIR_VERSION_MAJOR = 0
NADIR_VERSION_MINOR = 0
NADIR_VERSION_RELEASE = 0
NADIR_VERSION = ${NADIR_VERSION_MAJOR}.${NADIR_VERSION_MINOR}.${NADIR_VERSION_RELEASE}
NADIR_NAME = nadir
NADIR_GROUP = ${NADIR_NAME}
NADIR_VERSION_DIR = ${NADIR_GROUP}/${NADIR_NAME}-${NADIR_VERSION}
NADIR_DEPENDS_DIR = ${NADIR_NAME}

#NADIR_PKG = ${OTHER_THIRDPARTY_VERSION_PKG}/${NADIR_VERSION_DIR}
#NADIR_PKG = ${OTHER_VERSION_PKG}/${NADIR_VERSION_DIR}
NADIR_PKG = ${OTHER_DEPENDS_PKG}/${NADIR_DEPENDS_DIR}
#NADIR_SRC = ${NADIR_PKG}/src/${BN_GROUP}/${BN_NAME}
NADIR_SRC = ${NADIR_PKG}/source
NADIR_BLD = ${NADIR_PKG}/${BLD}/${BUILD_TYPE}
NADIR_LIB = ${NADIR_BLD}/lib
NADIR_BIN = ${NADIR_BLD}/bin

# nadir USRDEFINES
#
nadir_USRDEFINES += \

# nadir USRINCLUDES
#
nadir_USRINCLUDES += \
-I${NADIR_SRC} \

# nadir USRCXXFLAGS
#
nadir_USRCXXFLAGS += \

# nadir USRLIBDIRS
#
nadir_USRLIBDIRS += \
-L${NADIR_LIB} \

# nadir LIBS
#
nadir_LIBS += \
-lnadir \

# nadir FRAMEWORKS
#
nadir_FRAMEWORKS += \


########################################################################
# cifra

# cifra USRDEFINES
#
cifra_USRDEFINES += \
${nadir_USRDEFINES} \
${build_cifra_USRDEFINES} \

# cifra USRINCLUDES
#
cifra_USRINCLUDES += \
-I${CIFRA_SRC} \
${nadir_USRINCLUDES} \
${build_cifra_USRINCLUDES} \

# cifra USRCXXFLAGS
#
cifra_USRCXXFLAGS += \
${nadir_USRCXXFLAGS} \
${build_cifra_USRCXXFLAGS} \

# cifra USRLIBDIRS
#
cifra_USRLIBDIRS += \
-L${CIFRA_LIB} \
${nadir_USRLIBDIRS} \
${build_cifra_USRLIBDIRS} \

# cifra LIBS
#
cifra_LIBS += \
-lcifra \
${nadir_LIBS} \
${build_cifra_LIBS} \

########################################################################

