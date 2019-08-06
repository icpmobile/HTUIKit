//
//  HTDownloadView.m
//  InforCenterMobile
//
//  Created by HoteamSoft on 2018/9/20.
//  Copyright © 2018年 InforCenterMobile. All rights reserved.
//

#import "HTDownloadView.h"

@implementation HTDownloadView

- (instancetype) initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        // 注意：该处不要给子控件设置frame与数据，可以在这里初始化子控件的属性
        [self setBackgroundColor:[UIColor colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.5]];
        
        self.userInteractionEnabled = YES;
        
        UIView *bgView = [[UIView alloc] init];
        bgView.backgroundColor= [UIColor whiteColor];
        //设置圆角边框
        bgView.layer.cornerRadius = 8;
        bgView.layer.masksToBounds = YES;
        _bgView = bgView;
        [self addSubview:bgView];
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.textAlignment = NSTextAlignmentLeft;
        titleLabel.font = [UIFont boldSystemFontOfSize:18];
        _titleLabel = titleLabel;
         [bgView addSubview:titleLabel];
        
        UILabel *subTitleLabel = [[UILabel alloc] init];
        subTitleLabel.textAlignment = NSTextAlignmentLeft;
        subTitleLabel.font = [UIFont systemFontOfSize:15];
        _subTitleLabel = subTitleLabel;
         [bgView addSubview:subTitleLabel];
        
        UIProgressView *progressView = [[UIProgressView alloc] init];
        _progress =progressView;
        [bgView addSubview:progressView];
        
        UILabel *progressLabel = [[UILabel alloc] init];
        progressLabel.textAlignment = NSTextAlignmentLeft;
        progressLabel.font = [UIFont systemFontOfSize:12];
        _progressLabel = progressLabel;
        [bgView addSubview:progressLabel];
        
        
        UIButton *cancleBtn = [UIButton buttonWithType:UIButtonTypeCustom];
        [cancleBtn setTitle:@"取消" forState:UIControlStateNormal];
        [cancleBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [cancleBtn setBackgroundColor:[UIColor redColor]];
        cancleBtn.layer.cornerRadius = 5;
        cancleBtn.layer.masksToBounds = YES;
        [cancleBtn addTarget:self action:@selector(cancel) forControlEvents:UIControlEventTouchUpInside];
        _cancleBtn = cancleBtn;
        [bgView addSubview:cancleBtn];
        
    }
    return self;
}


- (void)layoutSubviews{
    [super layoutSubviews];
    
    self.bgView.frame = CGRectMake(self.bounds.size.width/2-130, self.bounds.size.height/2 - 100, 260, 180);
    self.titleLabel.frame = CGRectMake(8, 8, self.bgView.bounds.size.width-16, 25);
    
    self.subTitleLabel.frame = CGRectMake(8, CGRectGetMaxY(self.titleLabel.frame)+8, self.bgView.bounds.size.width-16, 20);
    self.progress.frame = CGRectMake(8, CGRectGetMaxY(self.subTitleLabel.frame)+8+8, self.bgView.bounds.size.width-16, 20);
    self.progressLabel.frame = CGRectMake(8, CGRectGetMaxY(self.progress.frame), self.bgView.bounds.size.width-16, 20);
    self.cancleBtn.frame = CGRectMake(8, CGRectGetMaxY(self.progressLabel.frame)+20, self.bgView.bounds.size.width-16, 32);
}


-(void)cancel{
    if ([_delegate respondsToSelector:@selector(cancleBtnClick)]) {
        [_delegate cancleBtnClick];
    }
}

@end
