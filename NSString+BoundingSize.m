//
//  NSString+BoundingSize.m
//  机构APP
//
//  Created by fits on 16/11/16.
//  Copyright © 2016年 fits. All rights reserved.
//

#import "NSString+BoundingSize.h"

@implementation NSString (BoundingSize)

//计算高度
+(CGFloat)heightWithString:(NSString *)string width:(CGFloat)width font:(UIFont *)font
{
    CGRect rect = [string boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:font} context:nil];
    return rect.size.height;
}

//判断是否有文字,yes为全空
+(BOOL)containLetter:(NSString *)string
{
    int count = 0;
    for(int i = 0; i < string.length; i++){
        unichar ch = [string characterAtIndex: i];
        if (ch == ' ' || ch == ' ' || ch == '\n') {
            count ++;
        }
    }
    
    if (count == string.length ) {
        return YES;
    }else{
        return NO;
    }
}


@end
