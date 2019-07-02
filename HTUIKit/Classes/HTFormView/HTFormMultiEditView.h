//
//  HTFormMultiEditView.h
//  InforCenterMobile
//
//  Created by HoteamSoft on 2019/6/11.
//  Copyright © 2019 InforCenterMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@class HTFormModel;

typedef void(^editFinishBlock)(NSString *text);

@interface HTFormMultiEditView : UIView


@property (nonatomic,copy) editFinishBlock editBlock;

@property(nonatomic,strong) HTFormModel *formModel;


@end

NS_ASSUME_NONNULL_END
