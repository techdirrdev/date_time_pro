#import "DateTimeProPlugin.h"
#if __has_include(<date_time_pro/date_time_pro-Swift.h>)
#import <date_time_pro/date_time_pro-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "date_time_pro-Swift.h"
#endif

@implementation DateTimeProPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftDateTimeProPlugin registerWithRegistrar:registrar];
}
@end
