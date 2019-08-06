//
//  HTDownloadView.h
//  InforCenterMobile
//
//  Created by HoteamSoft on 2018/9/20.
//  Copyright © 2018年 InforCenterMobile. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol HTDownloadViewDelegate <NSObject>

-(void) cancleBtnClick;

@end

@interface HTDownloadView : UIView


@property(nonatomic,assign) BOOL isShow;

@property(nonatomic,weak)UIView *bgView ;

@property(nonatomic,weak)UILabel *titleLabel;
@property(nonatomic,weak)UILabel *subTitleLabel;
@property (nonatomic,weak) UIProgressView *progress;
@property (nonatomic,weak) UILabel *progressLabel;

@property (nonatomic,weak) UIButton *cancleBtn;

@property(nonatomic,weak) id<HTDownloadViewDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
