//
//  ExpresaViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 31/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>

@interface ExpresaViewController : UIViewController{
    
    IBOutlet UITextView *textMensaje;
    
    IBOutlet UIScrollView *scroll;
    
    
}

-(IBAction)showTweet:(id)sender;

-(IBAction)Tamanio:(id)sender;

@end
