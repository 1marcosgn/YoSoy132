//
//  MediaViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MediaViewController : UIViewController{
    
    NSString *videoURL;
    
    IBOutlet UIWebView *videoView;
    
    NSString *videoHTML;
    
    IBOutlet UIImageView *imagen;

    
}

@property (nonatomic, retain) NSString *videoURL;

@property (nonatomic, retain) IBOutlet UIWebView *videoView;

@property (nonatomic, retain) NSString *videoHTML;


-(IBAction)videoYoSoy132:(id)sender;


-(IBAction)videoJovenes:(id)sender;


-(IBAction)videoAMLO:(id)sender;


-(IBAction)videoEstudiantes:(id)sender;


-(IBAction)videoPRI:(id)sender;

-(IBAction)MexicoActivo:(id)sender;


-(IBAction)VozUniversitaria:(id)sender;


-(IBAction)Calgary:(id)sender;


@end
