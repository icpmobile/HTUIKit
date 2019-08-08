//
//  DropdownMenu.h
//  WXGTableView
//
//  Created by 风往北吹_ on 15/11/30.
//  Copyright © 2015年 wangxg. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DropdownMenuDelegate <NSObject>

- (void)dropdownSelectedLeftIndex:(NSInteger)left RightIndex:(NSInteger)right TopIndex:(NSInteger)top;

@end

@interface DropdownMenu : UIViewController

@property (nonatomic, weak) id<DropdownMenuDelegate> delegate;

- (void)hideDropdownMenu;

- (instancetype)initDropdownMenuWithFrame:(CGRect)frame Menutitles:(NSArray *)titles MenuLists:(NSArray *)menuItems;

@end
