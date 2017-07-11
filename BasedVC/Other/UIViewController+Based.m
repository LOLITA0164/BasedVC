//
//  UIViewController+Based.m
//  BasedVC
//
//  Created by LOLITA on 2017/7/10.
//  Copyright © 2017年 LOLITA. All rights reserved.
//

#import "UIViewController+Based.h"
#import <objc/runtime.h>

@implementation UIViewController (Based)



-(NSString *)name{
    return objc_getAssociatedObject(self, _cmd);
}
-(void)setName:(NSString *)name{
    objc_setAssociatedObject(self, @selector(name), name, OBJC_ASSOCIATION_COPY_NONATOMIC);
}





#pragma mark - 加载视图
-(IndicatorView *)loadingView{
    IndicatorView *loading = objc_getAssociatedObject(self, _cmd);
    if (loading==nil) {
        loading = [[IndicatorView alloc] initWithType:IndicatorTypeCyclingCycle2];
        loading.center = self.view.center;
        [self.view addSubview:loading];
        objc_setAssociatedObject(self, @selector(loadingView), loading, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return loading;
}
-(void)setLoadingView:(IndicatorView *)loadingView{
    objc_setAssociatedObject(self, @selector(loadingView), loadingView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}





#pragma mark - 导航视图
-(NavigationView *)navigationBar{
    NavigationView *navBar = objc_getAssociatedObject(self, _cmd);
    if (navBar==nil) {
        navBar = [[NavigationView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, 64)];
        objc_setAssociatedObject(self, @selector(navigationBar), navBar, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        navBar.backgroundColor = [UIColor redColor];
        navBar.delegate = self;
        [self.view addSubview:navBar];
    }
    return navBar;
}
-(void)setNavigationBar:(NavigationView *)navigationBar{
    objc_setAssociatedObject(self, @selector(navigationBar), navigationBar, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}






@end
