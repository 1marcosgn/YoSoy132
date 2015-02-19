//
//  ManifiestoViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 31/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "ManifiestoViewController.h"

@interface ManifiestoViewController ()

@end

@implementation ManifiestoViewController

@synthesize videoURL,videoView,videoHTML;

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
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view.
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

-(IBAction)PlayVideo:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
    [self embedYouTube];

    
}

-(void) embedYouTube{
    
    videoURL = @"http://www.youtube.com/embed/igxPudJF6nU";
    
    videoHTML = [NSString stringWithFormat:@"\
                 <html>\
                 <head>\
                 <style type=\"text/css\">\
                 iframe {position:absolute; top:50%%; margin-top:-130px;}\
                 body {background-color:#000; margin:0;}\
                 </style>\
                 </head>\
                 <body>\
                 <iframe width=\"100%%\" height=\"240px\" src=\"%@\" frameborder=\"0\" allowfullscreen></iframe>\
                 </body>\
                 </html>", videoURL];
    
    [videoView loadHTMLString:videoHTML baseURL:nil];
    
    
}


@end
