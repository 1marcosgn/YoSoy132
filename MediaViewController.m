//
//  MediaViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "MediaViewController.h"

@interface MediaViewController ()

@end

@implementation MediaViewController

@synthesize videoURL,videoHTML,videoView;

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
    
    
    
    
}

-(IBAction)videoYoSoy132:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/oVvju2E3qcc";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
}


-(IBAction)videoJovenes:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/QMl0s2M8p-s";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}


-(IBAction)videoAMLO:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/0GKzsDuhC-o";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
}

-(IBAction)videoEstudiantes:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/FYDTypGU2S4?fs=1&amp;feature=oembed&amp;wmode=opaque";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}

-(IBAction)videoPRI:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/o4A88hUOeFk";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;
    
}


-(IBAction)MexicoActivo:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/pEChXFmpcdI";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;

    
}


-(IBAction)VozUniversitaria:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/M0mn5cU5GcQ?fs=1&amp;feature=oembed&amp;wmode=opaque";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;

    
}


-(IBAction)Calgary:(id)sender{
    
    imagen.alpha = 0.0;
    
    videoURL = @"http://www.youtube.com/embed/tLLugtZrIkU";
    [self embedYouTube];
    
    videoView.backgroundColor = [UIColor blackColor];
    videoView.opaque = NO;

    
    
}


-(void) embedYouTube{
    
        
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
