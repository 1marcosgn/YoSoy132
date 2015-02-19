//
//  EnlacesViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "EnlacesViewController.h"

@interface EnlacesViewController ()

@end

@implementation EnlacesViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    
    [scroll setScrollEnabled:YES];
    [scroll setContentSize:CGSizeMake(50, 790)];

    
    
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}


-(IBAction)enlacePagina:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://yosoy132.mx/"]];
    
}//
-(IBAction)enlaceFace:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://www.facebook.com/marchaYoSoy132"]];
    
}//
-(IBAction)enlaceTwitter:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"https://twitter.com/Soy132"]];
    
}//
-(IBAction)enlaceNoOficial:(id)sender{
    
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: @"http://yosoy132.org/"]];
    
}//

@end
