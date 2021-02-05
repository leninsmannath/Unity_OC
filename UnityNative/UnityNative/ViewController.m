//
//  ViewController.m
//  UnityNative
//
//  Created by Lenin S on 03/02/21.
//

#import "ViewController.h"
#import "AppDelegate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   
    
}

- (IBAction)startUnity:(id)sender {
    AppDelegate *appDelegate = (AppDelegate*)[UIApplication sharedApplication].delegate;
    [appDelegate showUnityWindow];

}
- (IBAction)endUnity:(id)sender {
}

@end
