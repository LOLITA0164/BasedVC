//
//  NSString+Category.h
//  BasedVC
//
//  Created by LOLITA on 2017/7/11.
//  Copyright © 2017年 LOLITA. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (Category)



/**
 *  获取日期格式为:2016-09-09 需要传入符号,默认为年月日
 */
+(NSString*)getFormateDateStringFormNSDate:(NSDate*)theDate withSignString:(NSString*)signString;


@end
