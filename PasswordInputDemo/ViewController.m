//
//  ViewController.m
//  PasswordInputDemo
//
//  Created by FengLing on 16/3/11.
//  Copyright © 2016年 lk. All rights reserved.
//

#import "ViewController.h"
#import "PWDView.h"
@interface ViewController ()<PwdViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)inputPwd:(id)sender{
    PWDView *pwd = [[[NSBundle mainBundle]loadNibNamed:@"PWDView" owner:self options:nil]firstObject];
    pwd.delegate = self;
    pwd.frame = self.view.bounds;
    [self.view addSubview:pwd];
}
#pragma mark - delegate

- (BOOL)ShouldResignFirstResponderWithInputPassword:(NSString *)pwd{
    if ([pwd isEqualToString:@"123456"]) {
        return YES;
    }
    return NO;
}
- (BOOL)ShouldShowErrorMessageWithInputPassword:(NSString *)pwd{
    if ([pwd isEqualToString:@"123456"]) {
        return NO;
    }
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
