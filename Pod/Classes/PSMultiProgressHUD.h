//
//  PSMultiProgressHUD.h
//  PSMultiProgressHUD
//
//  Created by Dahiri Farid on 6/29/15.
//  Copyright (c) 2015 Dahiri Farid. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, PSMultiProgressHUDInternalType)
{
    PSMultiProgressHUD_MB,
    PSMultiProgressHUD_MR,
    PSMultiProgressHUD_SV,
    PSMultiProgressHUD_None,
};

@interface PSMultiProgressHUD : NSObject

+ (void)setInternalType:(PSMultiProgressHUDInternalType)aInternalType;
+ (PSMultiProgressHUDInternalType)internalType;
+ (void)showIndeterminate;
+ (void)hide;

@end
