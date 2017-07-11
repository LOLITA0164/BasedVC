//
//  NSString+Category.m
//  BasedVC
//
//  Created by LOLITA on 2017/7/11.
//  Copyright © 2017年 LOLITA. All rights reserved.
//

#import "NSString+Category.h"

@implementation NSString (Category)



/**
 *  获取日期格式为:2016-09-09 需要传入符号,默认为年月日
 */
+(NSString *)getFormateDateStringFormNSDate:(NSDate *)theDate withSignString:(NSString *)signString{
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    NSInteger unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond;
    NSDateComponents *cmps = [calendar components:unitFlags fromDate:theDate];
    NSInteger year = [cmps year];
    NSInteger month = [cmps month];
    NSInteger day = [cmps day];
    NSInteger hour = [cmps hour];
    NSInteger minute = [cmps minute];
    NSInteger second = [cmps second];
    
    NSString *dateString;
    
    if (signString) {
        
        dateString = [NSString stringWithFormat:@"%ld%@%02ld%@%02ld %02ld:%02ld:%02ld",(long)year,signString,(long)month,signString,(long)day,(long)hour,(long)minute,(long)second];
    }else{
        
        dateString = [NSString stringWithFormat:@"%ld年%02ld月%02ld日 %02ld:%02ld:%02ld",(long)year,(long)month,(long)day,(long)hour,(long)minute,(long)second];
    }
    
    dateString = [dateString substringToIndex:dateString.length - 9];
    
    return dateString;
}



@end
