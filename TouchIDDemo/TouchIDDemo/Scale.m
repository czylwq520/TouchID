//
//  Scale.m
//  适配
//
//  Created by 年年青瑜 on 2016/10/14.
//  Copyright © 2016年 xinYuHeChuang. All rights reserved.
//

#import "Scale.h"

@implementation Scale
+ (double)scaleX
{
         if ([UIScreen mainScreen].bounds.size.width > 480)
         {
                  double scalex = [UIScreen mainScreen].bounds.size.width/375;
                  return scalex;
         }
         else
         {
                  double scalex = 1.0;
                  return scalex;
         }
}
+ (double)scaleY
{
         if ([UIScreen mainScreen].bounds.size.height > 480)
         {
                  double scaley = [UIScreen mainScreen].bounds.size.height /667;
                  return scaley;
         }
         else
         {
                  double scaley = 1.0;
                  return scaley;
         }
}
@end
