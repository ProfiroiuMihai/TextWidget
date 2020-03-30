#import "TextWidgetPlugin.h"
#if __has_include(<text_widget/text_widget-Swift.h>)
#import <text_widget/text_widget-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "text_widget-Swift.h"
#endif

@implementation TextWidgetPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftTextWidgetPlugin registerWithRegistrar:registrar];
}
@end
