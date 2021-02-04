//
//  AppDelegate.m
//  UnityNative
//
//  Created by Lenin S on 03/02/21.
//

#import "AppDelegate.h"
#import "ViewController.h"
#import <UIKit/UIKit.h>

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
        // Setup code that might create autoreleased objects goes here.
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}


@interface AppDelegate ()

@end

@implementation AppDelegate
-(UIWindow*) unityWindow {
    return UnityGetMainWindow();
}
-(void) showUnityWindow{
    
}
-(void) hideUnityWindow{
    
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ViewController *vc = [storyboard instantiateViewControllerWithIdentifier:@"ViewController"];
    UINavigationController *nav = [[UINavigationController alloc]initWithRootViewController:vc];
    self.window.rootViewController = nav;
    self.unityController = [[UnityAppController alloc] init];
    if (launchOptions != nil) {
        [self.unityController application:application didFinishLaunchingWithOptions:launchOptions];

    }
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application{
    [self.unityController applicationWillResignActive:application];
}
- (void)applicationDidEnterBackground:(UIApplication *)application{
    [self.unityController applicationDidEnterBackground:application];
}
- (void)applicationWillEnterForeground:(UIApplication *)application {
    [self.unityController applicationWillEnterForeground:application];
}

- (void)applicationDidBecomeActive:(UIApplication *)application{
    [self.unityController applicationDidBecomeActive:application];
}
- (void)applicationWillTerminate:(UIApplication *)application {
    [self.unityController applicationWillTerminate:application];
}
@end
