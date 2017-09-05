一个密码输入框

使用方法：
    
    PWDView *pwd = [[[NSBundle mainBundle]loadNibNamed:@"PWDView" owner:self options:nil]firstObject];
    
    pwd.delegate = self;
    
    pwd.frame = self.view.bounds;
    
    [self.view addSubview:pwd];
    
