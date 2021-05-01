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
#   File: des.pri
#
# Author: $author$
#   Date: 2/7/2021
#
# QtCreator .pri file for cifra executable des
########################################################################

########################################################################
# des

# des TARGET
#
des_TARGET = des

# des INCLUDEPATH
#
des_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# des DEFINES
#
des_DEFINES += \
$${cifra_DEFINES} \
LOGGING_LEVELS_DEFAULT_ERROR \
XOS_APP_CONSOLE_CRYPTO_CIPHER_DES_MAIN_INSTANCE \

########################################################################
# des OBJECTIVE_HEADERS
#
#des_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# des OBJECTIVE_SOURCES
#
#des_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# des HEADERS
#
des_HEADERS += \
$${NADIR_SRC}/xos/io/sequence.hpp \
$${NADIR_SRC}/xos/io/seeker.hpp \
$${NADIR_SRC}/xos/io/reader.hpp \
$${NADIR_SRC}/xos/io/writer.hpp \
\
$${NADIR_SRC}/xos/console/main.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
$${NADIR_SRC}/xos/app/console/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/main.hpp \
\
$${CIFRA_SRC}/xos/crypto/cipher/base.hpp \
$${CIFRA_SRC}/xos/crypto/cipher/implement.hpp \
$${CIFRA_SRC}/xos/crypto/cipher/extend.hpp \
\
$${CIFRA_SRC}/xos/crypto/cipher/des/implement.hpp \
$${CIFRA_SRC}/xos/crypto/cipher/des/extend.hpp \
$${CIFRA_SRC}/xos/crypto/cipher/des/openssl/constants.hpp \
$${CIFRA_SRC}/xos/crypto/cipher/des/openssl/implemented.hpp \
\
$${CIFRA_SRC}/xos/app/console/crypto/base/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/base/main.hpp \
\
$${CIFRA_SRC}/xos/app/console/crypto/cipher/base/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/cipher/base/main.hpp \
\
$${CIFRA_SRC}/xos/app/console/crypto/cipher/des/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/cipher/des/main.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \

# des SOURCES
#
des_SOURCES += \
$${CIFRA_SRC}/xos/crypto/cipher/des/openssl/implemented.cpp \
\
$${CIFRA_SRC}/xos/app/console/crypto/cipher/des/main_opt.cpp \
$${CIFRA_SRC}/xos/app/console/crypto/cipher/des/main.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# des FRAMEWORKS
#
des_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# des LIBS
#
des_LIBS += \
$${cifra_LIBS} \


