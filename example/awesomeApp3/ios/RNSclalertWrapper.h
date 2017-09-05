
#if __has_include("RCTBridgeModule.h")
#import "RCTBridgeModule.h"
#else
#import <React/RCTBridgeModule.h>
#endif

@interface RNSclalertWrapper : NSObject <RCTBridgeModule>
#define _STRINGIZE(x) #x
#define __STRINGIZE(text) @ _STRINGIZE(text)
#define CASE(str) if ([__s__ isEqualToString:(__STRINGIZE(str))])
#define SWITCH(s) for (NSString *__s__ = (s); __s__; __s__ = nil)
#define DEFAULT
@end
  
