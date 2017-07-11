//
//  IndexCtrl.m
//  BasedVC
//
//  Created by LOLITA on 2017/7/10.
//  Copyright © 2017年 LOLITA. All rights reserved.
//

#import "IndexCtrl.h"
#import "NSString+Category.h"


@interface IndexCtrl ()

@end

@implementation IndexCtrl

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor groupTableViewBackgroundColor];
    self.navigationController.navigationBar.hidden = YES;
    
    // 导航
    self.navigationBar.zhongJianLabel.text = @"我是标题";
    
    // 加载指示器
    [self.loadingView startAnimating];
 
    // 时间字符串获取
    NSLog(@"当前时间：%@",[NSString getFormateDateStringFormNSDate:[NSDate date] withSignString:@"-"]);
    
    // 字符串属性是使用
    self.name = @"LOLITA";
    NSLog(@"my name is :%@",self.name);
    
}




//-(void)navigationViewClickDlegate{
//    NSLog(@"点击了");
//}

-(void)navigationViewClickDlegate{
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
