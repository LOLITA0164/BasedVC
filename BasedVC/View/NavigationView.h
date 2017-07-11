//
//  NavigationView.h
//  GuDaShi
//
//  Created by songzhaojie on 17/1/12.
//  Copyright © 2017年 songzhaojie. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol  NavigationViewViewDlegate<NSObject>
@optional
-(void)navigationViewClickDlegate;

@end

@interface NavigationView : UIView

@property(nonatomic,strong) UILabel *zhongJianLabel;

@property(nonatomic,assign)id <NavigationViewViewDlegate> delegate;

@end
