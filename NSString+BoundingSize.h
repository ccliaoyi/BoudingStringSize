//
//  NSString+BoundingSize.h
//  机构APP
//
//  Created by fits on 16/11/16.
//  Copyright © 2016年 fits. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (BoundingSize)

//计算高度
+(CGFloat)heightWithString:(NSString *)string width:(CGFloat)width font:(UIFont *)font;

//判断是否有文字,yes为全空
+(BOOL)containLetter:(NSString *)string;

@end
