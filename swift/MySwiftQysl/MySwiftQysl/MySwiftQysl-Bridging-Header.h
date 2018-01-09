//
//  Use this file to import your target's public headers that you would like to expose to Swift.
//

#import "Hrequst.h"
#import "HViewController.h"
#import "BinaryTreeNode.h"
#import <CommonCrypto/CommonCryptor.h>
#define CC_MD5_DIGEST_LENGTH    16          /* digest length in bytes */
#define CC_MD5_BLOCK_BYTES      64          /* block size in bytes */
#define CC_MD5_BLOCK_LONG       (CC_MD5_BLOCK_BYTES / sizeof(CC_LONG))
typedef uint32_t CC_LONG;       /* 32 bit unsigned integer */
typedef uint64_t CC_LONG64;     /* 64 bit unsigned integer */
extern unsigned char *CC_MD5(const void *data, CC_LONG len, unsigned char *md)
__OSX_AVAILABLE_STARTING(__MAC_10_4, __IPHONE_2_0);
