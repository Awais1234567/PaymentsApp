 

#import <Foundation/Foundation.h>
#import <CommonCrypto/CommonDigest.h>


@interface NSString (md5)

//+(NSString *) md5:(NSString *) input;
+ (NSString*) encryptString:(NSString*)plaintext withKey:(NSString*)key;
+ (NSString*) decryptData:(NSString*)ciphertext withKey:(NSString*)key;
+ (NSString *)tripleDesEncryptString:(NSString *)input
                                 key:(NSString *)key
                               error:(NSError **)error;
+ (NSString *)tripleDesDecryptData:(NSData *)input
                               key:(NSString *)key
                             error:(NSError **)error;
@end
