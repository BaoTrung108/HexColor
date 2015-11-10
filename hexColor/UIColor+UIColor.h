//
//  UIColor+UIColor.h
//  hexColor
//
//  Created by Trung Bao on 11/10/15.
//  Copyright © 2015 Trung Bao. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (UIColor)
-(instancetype) color: (NSString *) hex
                alpha: (float) alpha;
@end
