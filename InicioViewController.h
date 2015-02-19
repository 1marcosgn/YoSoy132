//
//  InicioViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 31/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Twitter/Twitter.h>
#import <Accounts/Accounts.h>


@interface InicioViewController : UIViewController{
    
    IBOutlet UIView *vista1;
    IBOutlet UIView *vista2;
    IBOutlet UIView *vista3;
    IBOutlet UIView *vista4;
    IBOutlet UIView *vista5;
    
    IBOutlet UIPageControl *pageControl;
    
    IBOutlet UILabel *labelMensaje;

    
}


-(IBAction)cambiaPagina:(id)sender;

- (void)showTweetSheet:(NSString *)mensajes;

-(IBAction)tweet01;
-(IBAction)tweet02;
-(IBAction)tweet03;
-(IBAction)tweet04;
-(IBAction)tweet05;

/*
-(IBAction)T01:(id)sender;

-(IBAction)T02:(id)sender;

-(IBAction)T03:(id)sender;

-(IBAction)T04:(id)sender;

-(IBAction)T05:(id)sender;
*/

@end
