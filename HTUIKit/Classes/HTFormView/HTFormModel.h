//
//  HTFormModel.h
//  InforCenterMobile
//
//  Created by HoteamSoft on 2019/6/11.
//  Copyright © 2019 InforCenterMobile. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HTFormModel : NSObject

@property(nonatomic,copy)NSString *controlType;


@property(nonatomic,copy)NSString *filterString;


@property(nonatomic,copy)NSString *name;

@property(nonatomic,copy)NSString *title;

@property(nonatomic,assign)Boolean isMust;

@property(nonatomic,assign)Boolean isNumber;


@end

NS_ASSUME_NONNULL_END
