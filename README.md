一个密码输入框

使用方法：
    
    PWDView *pwd = [[[NSBundle mainBundle]loadNibNamed:@"PWDView" owner:self options:nil]firstObject];
    
    pwd.delegate = self;
    
    pwd.frame = self.view.bounds;
    
    [self.view addSubview:pwd];
    
#pragma mark - delegate

//取消第一响应代理
-(BOOL)ShouldResignFirstResponderWithInputPassword:(NSString *)pwd{

  if ([pwd isEqualToString:@"123456"]) {

    return YES;

  }

  return NO;

}
//显示错误提示代理
-(BOOL)ShouldShowErrorMessageWithInputPassword:(NSString *)pwd{

  if ([pwd isEqualToString:@"123456"]) {

    return NO;

  }

  return YES;

}
