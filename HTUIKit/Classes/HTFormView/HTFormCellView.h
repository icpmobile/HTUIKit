//
//  HTFormCellView.h
//  InforCenterMobile
//
//  Created by HoteamSoft on 2019/6/12.
//  Copyright © 2019 InforCenterMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^cellClickBlock)(void);
typedef void(^cellEditFinishBlock)(NSString *text);

@interface HTFormCellView : UIView
@property (nonatomic, assign) BOOL isNeed;
@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UITextField *textField;
@property (nonatomic, assign) BOOL isNext;

@property (nonatomic,copy) cellEditFinishBlock editFinishBlock;
@property (nonatomic,copy) cellClickBlock cellBlock;

@end

NS_ASSUME_NONNULL_END
