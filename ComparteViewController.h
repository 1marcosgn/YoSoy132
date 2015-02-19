//
//  ComparteViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>
#import <MessageUI/MessageUi.h>

@interface ComparteViewController : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate, UIPopoverControllerDelegate, MFMailComposeViewControllerDelegate>{
    
    
    UIPopoverController *popoverController;
    IBOutlet UIImageView *imageView;
    BOOL newMedia;
    
    IBOutlet UIScrollView *scroll;
    
}

@property (nonatomic, retain) UIPopoverController *popoverController;
@property (nonatomic, retain) UIImageView *imageView;


-(IBAction)takePicture:(id)sender;

-(IBAction)showTweet:(id)sender;

-(IBAction)EnviarMail:(id)sender;

@end
