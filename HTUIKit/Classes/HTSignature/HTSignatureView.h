//
//  HTSignatureView.h
//  EsayHandwritingSignature
//
//  Created by zlj on 2019/06/27.
//  Copyright © 2017年 hoteamsoft. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  HTSignatureViewDelegate <NSObject>

- (void)onSubmitBtn:(UIImage*)signatureImg;

@end

@interface HTSignatureView : UIView

@property (nonatomic, assign) id<HTSignatureViewDelegate> delegate;

- (void)show;

- (void)hide;

@end
