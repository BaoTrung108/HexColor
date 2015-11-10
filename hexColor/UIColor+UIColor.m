//
//  UIColor+UIColor.m
//  hexColor
//
//  Created by Trung Bao on 11/10/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import "UIColor+UIColor.h"

@implementation UIColor (UIColor)
-(instancetype) color: (NSString *) hex
                alpha: (float) alpha
{
    CGFloat valuealpha = 1;
    if (alpha>=0 && alpha<1) {
        valuealpha = alpha;
    }
    NSString *hexCharChuan = @"abcdefABCDEF0123456789";
    NSMutableString *filterHex = [[NSMutableString alloc] init];
    for (int i = 0; i < hex.length; i++) {
        unichar charInput = [hex characterAtIndex:i];
        NSString *hexChar = [NSString stringWithFormat:@"%c",charInput];
        if ([hexCharChuan rangeOfString:hexChar
                                options:NSCaseInsensitiveSearch].location != NSNotFound) {
            [filterHex appendString: hexChar];
        }
    }
    if (filterHex.length == 6) {
        unsigned long long colorvalue = 0;
        NSScanner *scanner = [[NSScanner alloc] initWithString:filterHex];
        [scanner scanHexLongLong:& colorvalue];
        CGFloat red = (CGFloat) (( colorvalue & 0xFF0000) >> 16 )/255.0;
        CGFloat green = (CGFloat) (( colorvalue & 0x00FF00) >> 8 )/255.0;
        CGFloat blue = (CGFloat) (colorvalue & 0x0000FF)/255.0;
       return [self initWithRed:red
                          green:green
                           blue:blue
                          alpha:alpha];
    }
    return [self initWithRed:0
                       green:0
                        blue:0
                       alpha:alpha];
}
@end