//
//  AppDelegate.h
//  UnityNative
//
//  Created by Lenin S on 03/02/21.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>
@property (nonatomic,strong) UIWindow *window;
@property (nonatomic,strong) UIWindow *unityWindow;
@property (nonatomic,strong) UnityAppController *unityController;
-(void) showUnityWindow;
-(void) hideUnityWindow;

@end

