//
//  UIViewController+Based.h
//  BasedVC
//
//  Created by LOLITA on 2017/7/10.
//  Copyright © 2017年 LOLITA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IndicatorView.h"
#import "NavigationView.h"


@interface UIViewController (Based)<NavigationViewViewDlegate>


@property (copy, nonatomic) NSString *name;



/**
 加载视图
 */
@property (strong,nonatomic)IndicatorView *loadingView;

/**
 导航栏
 */
@property (strong, nonatomic) NavigationView *navigationBar;






@end
