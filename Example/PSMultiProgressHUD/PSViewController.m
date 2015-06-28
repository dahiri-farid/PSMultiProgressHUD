//
//  PSViewController.m
//  PSMultiProgressHUD
//
//  Created by Dahiri Farid on 06/28/2015.
//  Copyright (c) 2014 Dahiri Farid. All rights reserved.
//

#import "PSViewController.h"
#import "PSMultiProgressHUD.h"

@interface PSViewController ()

@end

@implementation PSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [PSMultiProgressHUD setInternalType:PSMultiProgressHUD_MR];
    
    [self performSelector:@selector(showIndeterminateProgress) withObject:self afterDelay:2.0f];
    [self performSelector:@selector(hideIndeterminateProgress) withObject:self afterDelay:15.0f];
}

- (void)showIndeterminateProgress
{
    [PSMultiProgressHUD showIndeterminate];
}

- (void)hideIndeterminateProgress
{
    [PSMultiProgressHUD hide];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
