//
//  InicioViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 31/05/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "InicioViewController.h"

@interface InicioViewController ()

@end

@implementation InicioViewController


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
	
    
//    [vista2 removeFromSuperview];
//    [vista3 removeFromSuperview];
//    [vista4 removeFromSuperview];
//    [vista5 removeFromSuperview];
//    [[self view] addSubview:vista1];
    
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


-(IBAction)cambiaPagina:(id)sender{
    
    switch ([pageControl currentPage]) {
            
        case 0:
            [vista2 removeFromSuperview];
            [vista3 removeFromSuperview];
            [vista4 removeFromSuperview];
            [vista5 removeFromSuperview];
            [[self view] addSubview:vista3];
            break;
            
        case 1:
            [vista1 removeFromSuperview];
            [vista3 removeFromSuperview];
            [vista4 removeFromSuperview];
            [vista5 removeFromSuperview];
            [[self view] addSubview:vista2];
            break;
            
        case 2:
            [vista2 removeFromSuperview];
            [vista1 removeFromSuperview];
            [vista4 removeFromSuperview];
            [vista5 removeFromSuperview];
            [[self view] addSubview:vista3];
            break;
            
        case 3:
            [vista2 removeFromSuperview];
            [vista3 removeFromSuperview];
            [vista1 removeFromSuperview];
            [vista5 removeFromSuperview];
            [[self view] addSubview:vista4];
            break;
            
        case 4:
            [vista2 removeFromSuperview];
            [vista3 removeFromSuperview];
            [vista4 removeFromSuperview];
            [vista1 removeFromSuperview];
            [[self view] addSubview:vista5];
            break;
            
        default:
            break;
    
    }
    
}

- (void)showTweetSheet:(NSString *)mensajes{
    
    //  Create an instance of the Tweet Sheet
    TWTweetComposeViewController *tweetSheet = [[TWTweetComposeViewController alloc] init];
    
    // Sets the completion handler.  Note that we don't know which thread the
    // block will be called on, so we need to ensure that any UI updates occur
    // on the main queue
    tweetSheet.completionHandler = ^(TWTweetComposeViewControllerResult result) {
        switch(result) {
            case TWTweetComposeViewControllerResultCancelled:
                //  This means the user cancelled without sending the Tweet
                break;
            case TWTweetComposeViewControllerResultDone:
                //  This means the user hit 'Send'
                break;
        }
        
        
        //  dismiss the Tweet Sheet 
        dispatch_async(dispatch_get_main_queue(), ^{            
            [self dismissViewControllerAnimated:YES completion:^{
                NSLog(@"Tweet Sheet has been dismissed."); 
            }];
        });
    };
    
   
    
    
    NSString *msj = mensajes;
    
    NSString *mensaje = [NSString stringWithFormat:@"%@",msj];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
//    if (![tweetSheet addImage:imagenView.image]) 
//    {
    if (![tweetSheet addImage:[UIImage imageNamed:@"cap01.png"]]) {
        NSLog(@"Unable to add the image!");
    }
    
    //  Add an URL to the Tweet.  You can add multiple URLs.
    /* if (![tweetSheet addURL:[NSURL URLWithString:@"http://twitter.com/"]]){
     NSLog(@"Unable to add the URL!");
     }*/
    
    //  Presents the Tweet Sheet to the user
    [self presentViewController:tweetSheet animated:YES completion:^{
        NSLog(@"Tweet sheet has been presented.");
    }];
    
    
}

NSString *message = @"";



-(IBAction)tweet01{
    
    message = @"#YoSoy132 se construye como un movimiento que busca hacer efectivos principios fundamentales de la vida democrática";
    
        
    [self showTweetSheet:message];
    
    
}

-(IBAction)tweet02{
    
    message = @"#YoSoy132 Pueblo informado, Pueblo NO Manipulado";
   
    
    [self showTweetSheet:message];
    
}

-(IBAction)tweet03{
    
    message = @"#YoSoy132 NO favoritismo en los medios de comunicación";
        
    [self showTweetSheet:message];
    
}

-(IBAction)tweet04{
    
    message = @"#YoSoy132 Manejo de información de manera honesta, Informar y Educar nuestra misión";
    
    
    [self showTweetSheet:message];
    
}

-(IBAction)tweet05{
    
    message = @"#YoSoy132 Quiero información real y no manipulada";
    
    
    [self showTweetSheet:message];
    
}

@end
