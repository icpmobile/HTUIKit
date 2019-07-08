//
//  HTViewController.m
//  HTUIKit
//
//  Created by zhanglianjiang on 04/30/2019.
//  Copyright (c) 2019 zhanglianjiang. All rights reserved.
//

#import "HTViewController.h"
#import "LGAlertView.h"


@interface HTViewController ()<LGAlertViewDelegate>

@end

@implementation HTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(50, 50, 120, 30);
    btn.backgroundColor = [UIColor blueColor];
    btn.titleLabel.textColor = [UIColor whiteColor];
    [btn setTitle:@"测试列表" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(btnTestDialog:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)btnTestDialog:(id)sender {
    // 测试LGAlertDialog
    LGAlertView *alertView = [LGAlertView alertViewWithTitle:@"测试列表弹出"
                                                     message:nil
                                                       style:LGAlertViewStyleAlert
                                                buttonTitles:@[@"Random", @"LGAlertView", @"LGActionSheet", @"UIAlertView", @"UIActionSheet"]
                                           cancelButtonTitle:@"Cancel"
                                      destructiveButtonTitle:nil
                                                    delegate:self];
    alertView.tag = 0;
    [alertView showAnimated];
}

# pragma mark - delegate中的回调方法
- (void)alertView:(nonnull LGAlertView *)alertView clickedButtonAtIndex:(NSUInteger)index title:(nullable NSString *)title {
    NSLog(@"点击：%@", title);
    [alertView dismissAnimated];
}

- (void)alertViewCancelled:(nonnull LGAlertView *)alertView {
    NSLog(@"已经取消！！！");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
