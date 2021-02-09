########################################################################
# Copyright (c) 1988-2021 $organization$
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
#   File: sha256.pro
#
# Author: $author$
#   Date: 2/8/2021
#
# QtCreator .pro file for cifra executable sha256
########################################################################
include(../../../../../../build/QtCreator/cifra.pri)
include(../../../../../build/QtCreator/cifra.pri)
include(../../../../QtCreator/cifra.pri)
include(../../cifra.pri)
include(../../../../QtCreator/app/sha256/sha256.pri)

TARGET = $${sha256_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${sha256_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${sha256_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${sha256_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${sha256_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${sha256_HEADERS} \
$${sha256_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${sha256_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${sha256_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${sha256_LIBS} \
$${FRAMEWORKS} \


