#import "GeensePlugin.h"

@implementation GeensePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  FlutterMethodChannel* channel = [FlutterMethodChannel
      methodChannelWithName:@"geense_plugin"
            binaryMessenger:[registrar messenger]];
  GeensePlugin* instance = [[GeensePlugin alloc] init];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (void)handleMethodCall:(FlutterMethodCall*)call result:(FlutterResult)result {
  if ([@"getPlatformVersion" isEqualToString:call.method]) {
    result([@"iOS " stringByAppendingString:[[UIDevice currentDevice] systemVersion]]);
  } else if([@"gennsee" isEqualToString:call.method])
  {
      result (@" get ios success");
      
  }else if([@"sayHello" isEqualToString:call.method])
  {
      
      NSDictionary *message = call.arguments[@"message"];
      NSLog(@"%@",message);
      
      result (@"我去看直播了");
      
      
  }
  else {
    result(FlutterMethodNotImplemented);
  }
}

@end
