//
//  PSMultiProgressHUD.m
//  PSMultiProgressHUD
//
//  Created by Dahiri Farid on 6/29/15.
//  Copyright (c) 2015 Dahiri Farid. All rights reserved.
//

#import "PSMultiProgressHUD.h"
#import "SVProgressHUD.h"
#import "MBProgressHUD.h"
#import "MRProgress.h"
#import "UIWindow+PSBaseWindow.h"

static PSMultiProgressHUDInternalType gMultiProgressHUDInternalType = PSMultiProgressHUD_MB;
static BOOL gMultiProgressHUDShowing = NO;

@implementation PSMultiProgressHUD

+ (void)setInternalType:(PSMultiProgressHUDInternalType)aInternalType
{
    gMultiProgressHUDInternalType = aInternalType;
}

+ (PSMultiProgressHUDInternalType)internalType
{
    return gMultiProgressHUDInternalType;
}

+ (void)showIndeterminate
{
    NSAssert(gMultiProgressHUDShowing == NO, @"Only one instance of progress HUD can be presented at a time!");
    
    if ([[self class] internalType] == PSMultiProgressHUD_MB)
    {
        [MBProgressHUD showHUDAddedTo:[UIWindow PSbaseWindow] animated:YES];
    }
    else if ([[self class] internalType] == PSMultiProgressHUD_MR)
    {
        [MRProgressOverlayView showOverlayAddedTo:[UIWindow PSbaseWindow]
                                            title:@""
                                             mode:MRProgressOverlayViewModeIndeterminate
                                         animated:YES];
    }
    else if ([[self class] internalType] == PSMultiProgressHUD_SV)
    {
        [SVProgressHUD show];
    }
    else
    {
        // Nothing to show
    }
    
    gMultiProgressHUDShowing = YES;
}

+ (void)hide
{
    NSAssert(gMultiProgressHUDShowing == YES, @"Attemted to hide progress HUD, while it is hidden!");
    
    if ([[self class] internalType] == PSMultiProgressHUD_MB)
    {
        [MBProgressHUD hideHUDForView:[UIWindow PSbaseWindow] animated:YES];
    }
    else if ([[self class] internalType] == PSMultiProgressHUD_MR)
    {
        [MRProgressOverlayView dismissOverlayForView:[UIWindow PSbaseWindow] animated:YES];
    }
    else if ([[self class] internalType] == PSMultiProgressHUD_SV)
    {
        [SVProgressHUD dismiss];
    }
    else
    {
        // Nothing to hide
    }
    
    gMultiProgressHUDShowing = NO;
}

@end
