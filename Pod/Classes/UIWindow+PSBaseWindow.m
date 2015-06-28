//
//  UIWindow+PSBaseWindow.m
//  PSMultiProgressHUD
//
//  Created by Dahiri Farid on 6/29/15.
//  Copyright (c) 2015 Dahiri Farid. All rights reserved.
//

#import "UIWindow+PSBaseWindow.h"

@implementation UIWindow (PSBaseWindow)

+ (instancetype)PSBaseWindow
{
    NSEnumerator *frontToBackWindows = [UIApplication.sharedApplication.windows reverseObjectEnumerator];
    UIScreen *mainScreen = UIScreen.mainScreen;
    
    for (UIWindow *window in frontToBackWindows)
    {
        if (window.screen == mainScreen && window.windowLevel == UIWindowLevelNormal)
        {
            return window;
        }
    }
    
    return [UIApplication sharedApplication].keyWindow;
}

@end
