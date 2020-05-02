///////////////////////////////////////////////////////////////////////
/// Copyright (c) 1988-2020 $organization$
///
/// This software is provided by the author and contributors ``as is'' 
/// and any express or implied warranties, including, but not limited to, 
/// the implied warranties of merchantability and fitness for a particular 
/// purpose are disclaimed. In no event shall the author or contributors 
/// be liable for any direct, indirect, incidental, special, exemplary, 
/// or consequential damages (including, but not limited to, procurement 
/// of substitute goods or services; loss of use, data, or profits; or 
/// business interruption) however caused and on any theory of liability, 
/// whether in contract, strict liability, or tort (including negligence 
/// or otherwise) arising in any way out of the use of this software, 
/// even if advised of the possibility of such damage.
///
///   File: main.hpp
///
/// Author: $author$
///   Date: 5/1/2020
///////////////////////////////////////////////////////////////////////
#ifndef XOS_APP_CONSOLE_CIFRA_MAIN_HPP
#define XOS_APP_CONSOLE_CIFRA_MAIN_HPP

#include "xos/app/console/cifra/main_opt.hpp"
#include "xos/crypto/hash/openssl/md5.hpp"
#include "xos/crypto/hash/openssl/sha1.hpp"
#include "xos/crypto/hash/openssl/sha256.hpp"
#include "xos/crypto/hash/openssl/sha512.hpp"

namespace xos {
namespace app {
namespace console {
namespace cifra {

/// class maint
template <class TExtends = main_opt, class TImplements = typename TExtends::implements>
class exported maint: virtual public TImplements, public TExtends {
public:
    typedef TImplements implements;
    typedef TExtends extends;
    typedef maint derives;

    enum { HASHSIZE = crypto::hash::sha512::HASHSIZE };
    typedef typename extends::file_t file_t;
    typedef typename extends::string_t string_t;
    typedef typename extends::char_t char_t;
    typedef typename extends::end_char_t end_char_t;
    enum { end_char = extends::end_char };

    /// constructor / destructor
    maint(): hash_algorithm_(0) {
    }
    virtual ~maint() {
    }
private:
    maint(const maint& copy): hash_algorithm_(0) {
        throw xos::exception(exception_unexpected);
    }
public:

protected:
    /// ...run
    virtual int default_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        err = this->usage(argc, argv, env);
        return err;
    }
    virtual int hash_run(int argc, char_t** argv, char_t** env) {
        int err = 0;
        ssize_t count = 0;
        size_t size = 0;
        byte_t& hash = this->hash(size);
        crypto::hash::algorithm& algorithm = this->hash_algorithm();

        if ((0 <= (count = algorithm.initialize()))) {
            if ((0 < (count = algorithm.finalize(&hash, size)))) {
                this->outxln(&hash, count);
            }
        }
        return err;
    }

    /// ...hash_algorithm
    crypto::hash::algorithm& (derives::*hash_algorithm_)() const;
    virtual crypto::hash::algorithm& hash_algorithm() const {
        if ((this->hash_algorithm_)) {
            return (this->*hash_algorithm_)();
        }
        return default_hash_algorithm();
    }
    virtual crypto::hash::algorithm& default_hash_algorithm() const {
        return sha1_hash_algorithm();
    }
    virtual crypto::hash::algorithm& md5_hash_algorithm() const {
        return md5();
    }
    virtual crypto::hash::algorithm& sha1_hash_algorithm() const {
        return sha1();
    }
    virtual crypto::hash::algorithm& sha256_hash_algorithm() const {
        return sha256();
    }
    virtual crypto::hash::algorithm& sha512_hash_algorithm() const {
        return sha512();
    }
    
    /// md5 / sha...
    virtual crypto::hash::md5& md5() const {
        return (crypto::hash::md5&)openssl_md5_;
    }
    virtual crypto::hash::sha1& sha1() const {
        return (crypto::hash::sha1&)openssl_sha1_;
    }
    virtual crypto::hash::sha256& sha256() const {
        return (crypto::hash::sha256&)openssl_sha256_;
    }
    virtual crypto::hash::sha512& sha512() const {
        return (crypto::hash::sha512&)openssl_sha512_;
    }
    virtual byte_t& hash(size_t& size) const {
        size = sizeof(hash_);
        return (byte_t&)hash_;
    }

protected:
    crypto::hash::openssl::md5 openssl_md5_;
    crypto::hash::openssl::sha1 openssl_sha1_;
    crypto::hash::openssl::sha256 openssl_sha256_;
    crypto::hash::openssl::sha512 openssl_sha512_;
    byte_t hash_[HASHSIZE];
}; /// class maint
typedef maint<> main;

} /// namespace cifra
} /// namespace console
} /// namespace app
} /// namespace xos

#endif /// ndef XOS_APP_CONSOLE_CIFRA_MAIN_HPP 
