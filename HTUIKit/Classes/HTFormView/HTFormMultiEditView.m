//
//  HTFormMultiEditView.m
//  InforCenterMobile
//
//  Created by HoteamSoft on 2019/6/11.
//  Copyright © 2019 InforCenterMobile. All rights reserved.
//

#import "HTFormMultiEditView.h"
#import "UITextView+Placeholder.h"

#import "BRPickerViewMacro.h"


#import "HTFormModel.h"


@interface HTFormMultiEditView ()<UITextViewDelegate>

//红星（必填/非必填）
@property(nonatomic,weak) UILabel *iconLabel;
//标题
@property(nonatomic,weak) UILabel *titleLabel;
//标题
@property(nonatomic,weak) UITextView *contentTV;

@end


@implementation HTFormMultiEditView

// 1.重写initWithFrame:方法，创建子控件并添加到自己上面
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        // 1. 图标
        UILabel *iconLabel = [UILabel new];
        iconLabel.text=@"*";
        iconLabel.textAlignment = NSTextAlignmentCenter;
        [iconLabel setTextColor:[UIColor redColor]];
        [self addSubview:iconLabel];
        _iconLabel = iconLabel;
        
        // 2.标题
        UILabel *titleLabel = [UILabel new];
        [titleLabel setTextColor:[UIColor blackColor]];
        titleLabel.font = [UIFont systemFontOfSize:15.0f * kScaleFit];
        titleLabel.textAlignment = NSTextAlignmentLeft;
        [self addSubview:titleLabel];
        _titleLabel = titleLabel;
        

        UITextView *contentTV = [[UITextView alloc] init];
        contentTV.placeholder = @"请输入";
        [self addSubview:contentTV];
        contentTV.delegate = self;
        _contentTV = contentTV;
        
        
        
    }
    return self;
}


// 2.重写layoutSubviews，给自己内部子控件设置frame
- (void)layoutSubviews {
    [super layoutSubviews];
    
    self.iconLabel.frame = CGRectMake(8, 0, 10 , 20);
    self.titleLabel.frame = CGRectMake(10+8, 0, self.frame.size.width-10-8-8, 30);
    self.contentTV.frame =CGRectMake(10+8, 30, self.frame.size.width-10-8-8, 100);
}

#pragma mark - UITextViewDelegate
-(void)textViewDidEndEditing:(UITextView *)textView
{
    NSString *text = textView.text;
    if (_editBlock) {
        _editBlock(text);
    }
}


-(void)setFormModel:(HTFormModel *)formModel
{
    _formModel = formModel;
    
    self.titleLabel.text = formModel.title;
    
    self.iconLabel.hidden =!formModel.isMust;
    
}



@end
