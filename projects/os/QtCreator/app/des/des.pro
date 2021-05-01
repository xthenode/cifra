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
#   File: des.pro
#
# Author: $author$
#   Date: 2/7/2021
#
# QtCreator .pro file for cifra executable des
########################################################################
include(../../../../../../build/QtCreator/cifra.pri)
include(../../../../../build/QtCreator/cifra.pri)
include(../../../../QtCreator/cifra.pri)
include(../../cifra.pri)
include(../../../../QtCreator/app/des/des.pri)

TARGET = $${des_TARGET}

########################################################################
# INCLUDEPATH
#
INCLUDEPATH += \
$${des_INCLUDEPATH} \

# DEFINES
# 
DEFINES += \
$${des_DEFINES} \

########################################################################
# OBJECTIVE_HEADERS
#
OBJECTIVE_HEADERS += \
$${des_OBJECTIVE_HEADERS} \

# OBJECTIVE_SOURCES
#
OBJECTIVE_SOURCES += \
$${des_OBJECTIVE_SOURCES} \

########################################################################
# HEADERS
#
HEADERS += \
$${des_HEADERS} \
$${des_OBJECTIVE_HEADERS} \

# SOURCES
#
SOURCES += \
$${des_SOURCES} \

########################################################################
# FRAMEWORKS
#
FRAMEWORKS += \
$${des_FRAMEWORKS} \

# LIBS
#
LIBS += \
$${des_LIBS} \
$${FRAMEWORKS} \


