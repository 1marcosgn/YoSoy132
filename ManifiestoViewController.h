//
//  ManifiestoViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 31/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioToolbox.h>
#import <MediaPlayer/MediaPlayer.h>

@interface ManifiestoViewController : UIViewController{
    
    NSString *videoURL;
    
    IBOutlet UIWebView *videoView;
    
    NSString *videoHTML;
    
    IBOutlet UIImageView *imagen;
    
}

@property (nonatomic, retain) NSString *videoURL;

@property (nonatomic, retain) IBOutlet UIWebView *videoView;

@property (nonatomic, retain) NSString *videoHTML;


-(IBAction)PlayVideo:(id)sender;

@end
