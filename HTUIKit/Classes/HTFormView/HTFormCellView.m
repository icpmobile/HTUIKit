//
//  HTFormCellView.m
//  InforCenterMobile
//
//  Created by HoteamSoft on 2019/6/12.
//  Copyright © 2019 InforCenterMobile. All rights reserved.
//

#import "HTFormCellView.h"
#import "BRPickerViewMacro.h"

#define kLeftMargin 20
#define kRowHeight 50



@interface HTFormCellView ()<UITextFieldDelegate>
@property (nonatomic, strong) UILabel *needLabel;
@property (nonatomic, strong) UIImageView *nextImageView;

@end

@implementation HTFormCellView


// 1.重写initWithFrame:方法，创建子控件并添加到自己上面
- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor whiteColor];
        
        [self addSubview:self.needLabel];
        [self addSubview:self.titleLabel];
        [self addSubview:self.textField];
        [self addSubview:self.nextImageView];
        
    }
    return self;
}

- (void)layoutSubviews {
    [super layoutSubviews];
    // 调整cell分割线的边距：top, left, bottom, right
    //self.separatorInset = UIEdgeInsetsMake(0, kLeftMargin, 0, kLeftMargin);
    self.needLabel.frame = CGRectMake(kLeftMargin - 16, 0, 16, kRowHeight);
    self.titleLabel.frame = CGRectMake(kLeftMargin, 0, 100, kRowHeight);
    self.nextImageView.frame = CGRectMake([UIScreen mainScreen].bounds.size.width - kLeftMargin - 14, (kRowHeight - 14) / 2, 14, 14);
    self.textField.frame = CGRectMake(self.nextImageView.frame.origin.x - 200, 0, 200, kRowHeight);
    if (self.isNeed) {
        self.needLabel.hidden = NO;
    } else {
        self.needLabel.hidden = YES;
    }
    if (self.isNext) {
        self.nextImageView.hidden = NO;
    } else {
        self.nextImageView.hidden = YES;
    }
}

- (UILabel *)titleLabel {
    if (!_titleLabel) {
        _titleLabel = [[UILabel alloc]init];
        _titleLabel.backgroundColor = [UIColor clearColor];
        _titleLabel.textColor = [UIColor blackColor];//[UIColor colorWithHexCode:@"#464646"];
        _titleLabel.font = [UIFont systemFontOfSize:15.0f * kScaleFit];
        _titleLabel.textAlignment = NSTextAlignmentLeft;
    }
    return _titleLabel;
}

- (UILabel *)needLabel {
    if (!_needLabel) {
        _needLabel = [[UILabel alloc]init];
        _needLabel.backgroundColor = [UIColor clearColor];
        _needLabel.font = [UIFont systemFontOfSize:16.0f * kScaleFit];
        _needLabel.textAlignment = NSTextAlignmentCenter;
        _needLabel.textColor = [UIColor redColor];
        _needLabel.text = @"*";
    }
    return _needLabel;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc]init];
        _textField.backgroundColor = [UIColor clearColor];
        _textField.font = [UIFont systemFontOfSize:14.0f * kScaleFit];
        _textField.textAlignment = NSTextAlignmentRight;
        _textField.delegate = self;
        _textField.textColor =BR_RGB_HEX(0x666666, 1.0); //[UIColor colorWithHexCode:@"#666666"];// BR_RGB_HEX(0x666666, 1.0);
    }
    return _textField;
}

- (UIImageView *)nextImageView {
    if (!_nextImageView) {
        _nextImageView = [[UIImageView alloc]init];
        _nextImageView.backgroundColor = [UIColor clearColor];
        
        NSBundle *bundle = [NSBundle bundleForClass:[self class]];
        NSString *path = [bundle pathForResource:@"ht_ui_icon_next@2x" ofType:nil  inDirectory:@"HTUIKit.bundle"];

        _nextImageView.image = [UIImage imageWithContentsOfFile:path];
    }
    return _nextImageView;
}


#pragma mark - UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    if (!self.isNext) {
        return YES; // 当前 textField 可以编辑
    } else {
        [self endEditing:YES];
        //回调
        if (_cellBlock) {
            _cellBlock();
        }
        return NO; // 当前 textField 不可编辑，可以响应点击事件
    }
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (_editFinishBlock) {
        _editFinishBlock(textField.text);
    }
}



@end
