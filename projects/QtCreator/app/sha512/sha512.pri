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
#   File: sha512.pri
#
# Author: $author$
#   Date: 2/8/2021
#
# QtCreator .pri file for cifra executable sha512
########################################################################

########################################################################
# sha512

# sha512 TARGET
#
sha512_TARGET = sha512

# sha512 INCLUDEPATH
#
sha512_INCLUDEPATH += \
$${cifra_INCLUDEPATH} \

# sha512 DEFINES
#
sha512_DEFINES += \
$${cifra_DEFINES} \
LOGGING_LEVELS_DEFAULT_ERROR \
XOS_APP_CONSOLE_CRYPTO_HASH_SHA512_MAIN_INSTANCE \

########################################################################
# sha512 OBJECTIVE_HEADERS
#
#sha512_OBJECTIVE_HEADERS += \
#$${CIFRA_SRC}/cifra/base/Base.hh \

# sha512 OBJECTIVE_SOURCES
#
#sha512_OBJECTIVE_SOURCES += \
#$${CIFRA_SRC}/cifra/base/Base.mm \

########################################################################
# sha512 HEADERS
#
sha512_HEADERS += \
$${NADIR_SRC}/xos/console/io.hpp \
$${NADIR_SRC}/xos/console/getopt/main_opt.hpp \
$${NADIR_SRC}/xos/console/getopt/main.hpp \
$${NADIR_SRC}/xos/app/console/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/main.hpp \
$${NADIR_SRC}/xos/app/console/version/main_opt.hpp \
$${NADIR_SRC}/xos/app/console/version/main.hpp \
\
$${CIFRA_SRC}/xos/crypto/base/error.hpp \
$${CIFRA_SRC}/xos/crypto/base/exception.hpp \
$${CIFRA_SRC}/xos/crypto/base/implement.hpp \
$${CIFRA_SRC}/xos/crypto/base/extend.hpp \
$${CIFRA_SRC}/xos/crypto/base.hpp \
\
$${CIFRA_SRC}/xos/crypto/hash/algorithm.hpp \
$${CIFRA_SRC}/xos/crypto/hash/implement.hpp \
$${CIFRA_SRC}/xos/crypto/hash/extend.hpp \
$${CIFRA_SRC}/xos/crypto/hash/md5.hpp \
$${CIFRA_SRC}/xos/crypto/hash/sha1.hpp \
$${CIFRA_SRC}/xos/crypto/hash/sha256.hpp \
$${CIFRA_SRC}/xos/crypto/hash/sha512.hpp \
$${CIFRA_SRC}/xos/crypto/hash/openssl/md5.hpp \
$${CIFRA_SRC}/xos/crypto/hash/openssl/sha1.hpp \
$${CIFRA_SRC}/xos/crypto/hash/openssl/sha256.hpp \
$${CIFRA_SRC}/xos/crypto/hash/openssl/sha512.hpp \
$${CIFRA_SRC}/xos/crypto/hash/implemented.hpp \
$${CIFRA_SRC}/xos/crypto/hash.hpp \
\
$${CIFRA_SRC}/xos/app/console/crypto/base/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/base/main.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/hash/base/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/hash/base/main.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/hash/sha512/main_opt.hpp \
$${CIFRA_SRC}/xos/app/console/crypto/hash/sha512/main.hpp \
\
$${NADIR_SRC}/xos/console/main_main.hpp \

# sha512 SOURCES
#
sha512_SOURCES += \
$${CIFRA_SRC}/xos/app/console/crypto/hash/sha512/main_opt.cpp \
$${CIFRA_SRC}/xos/app/console/crypto/hash/sha512/main.cpp \
\
$${NADIR_SRC}/xos/console/main_main.cpp \

########################################################################
# sha512 FRAMEWORKS
#
sha512_FRAMEWORKS += \
$${cifra_FRAMEWORKS} \

# sha512 LIBS
#
sha512_LIBS += \
$${cifra_LIBS} \


