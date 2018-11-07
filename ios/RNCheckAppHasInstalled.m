#import <React/RCTBridgeModule.h>


@interface RCT_EXTERN_MODULE(CopyFileToCloud, NSObject)

RCT_EXTERN_METHOD(copyFileToCloud:(NSString *) file fileName: (NSString *) fileName callback: (RCTResponseSenderBlock) callback)

@end


@interface RCT_EXTERN_MODULE(OpenWithMSWord, NSObject)

RCT_EXTERN_METHOD(openWithMSWord:(NSString *) file)

@end


