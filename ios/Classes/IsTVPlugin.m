#import "IsTVPlugin.h"
#if __has_include(<is_tv/is_tv-Swift.h>)
#import <is_tv/is_tv-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "is_tv-Swift.h"
#endif

@implementation IsTVPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftIsTVPlugin registerWithRegistrar:registrar];
}
@end
