//
//  NavigationView.m
//  GuDaShi
//
//  Created by songzhaojie on 17/1/12.
//  Copyright © 2017年 songzhaojie. All rights reserved.
//

#import "NavigationView.h"


@implementation NavigationView

-(id)initWithFrame:(CGRect)frame{
    self=[super initWithFrame:frame];
    
    if (self){
        
        [self addSubview:self.zhongJianLabel];
    }
    
    return self;
}



-(UILabel *)zhongJianLabel{
    if (_zhongJianLabel==nil) {
        _zhongJianLabel = [[UILabel alloc] initWithFrame:self.bounds];
        _zhongJianLabel.text = @"lolita";
        _zhongJianLabel.textAlignment = NSTextAlignmentCenter;
        _zhongJianLabel.font = [UIFont systemFontOfSize:20];
        _zhongJianLabel.textColor = [UIColor whiteColor];
    }
    return _zhongJianLabel;
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    if ([_delegate respondsToSelector:@selector(navigationViewClickDlegate)]) {
        [_delegate navigationViewClickDlegate];
    }

}


@end
