一个密码输入框

使用方法：
    
    PWDView *pwd = [[[NSBundle mainBundle]loadNibNamed:@"PWDView" owner:self options:nil]firstObject];
    
    pwd.delegate = self;
    
    pwd.frame = self.view.bounds;
    
    [self.view addSubview:pwd];
    
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

![image](https://github.com/likangios/PasswordInputDemo/blob/master/PasswordInputDemo/IMG_0119.PNG)
![image](https://github.com/likangios/PasswordInputDemo/blob/master/PasswordInputDemo/IMG_0120.PNG)



