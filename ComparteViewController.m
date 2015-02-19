//
//  ComparteViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "ComparteViewController.h"

@interface ComparteViewController ()

@end

@implementation ComparteViewController

@synthesize popoverController;
@synthesize imageView;

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
    [scroll setContentSize:CGSizeMake(50, 1390)];
    
    //cambiar color Boton Back
    UIBarButtonItem *backButton = [[UIBarButtonItem alloc]initWithTitle:@"Back" style:UIBarButtonItemStyleBordered target:nil action:nil];
    
    backButton.tintColor = [UIColor blackColor];
    self.navigationItem.backBarButtonItem = backButton;
    
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


-(IBAction)takePicture:(id)sender{
    
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;
    picker.sourceType = UIImagePickerControllerSourceTypeCamera;
    [self presentModalViewController:picker animated:YES];    
    
}

//Recibe el mensaje cuando el controlador a finalizado.
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info{
    
    //Quita la vista del controlador.
    [picker dismissModalViewControllerAnimated:YES];
    
    //Establece la imagen tomada en el objeto UIImageView.
    imageView.image = [info objectForKey:@"UIImagePickerControllerOriginalImage"];
    
}


-(IBAction)showTweet:(id)sender{
    
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
    
    
    
    
    NSString *msj = @"";//campoTexto.text;
    
    NSString *mensaje = [NSString stringWithFormat:@"#YoSoy132 %@",msj];
    
    //  Set the initial body of the Tweet2
    [tweetSheet setInitialText:mensaje]; 
    
    //  Adds an image to the Tweet
    //  For demo purposes, assume we have an image named 'larry.png'
    //  that we wish to attach
    
        if (![tweetSheet addImage:imageView.image]) 
        {
    //if (![tweetSheet addImage:[UIImage imageNamed:@"cap01.png"]]) {
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


-(IBAction)EnviarMail:(id)sender{
    
    [self mailIt];
    
}

#pragma eMail - Envio de Correo

-(void)mailIt {MFMailComposeViewController *picker = [[MFMailComposeViewController alloc] init];
    
    picker.mailComposeDelegate = self;
    [picker setSubject:@"#YoSoy132"];
    
    NSArray *aReceptores=[NSArray arrayWithObjects:@"informes@yosoy132.org", nil];
    [picker setToRecipients:aReceptores];
    
    
    UIImage *roboPic = [UIImage imageNamed:@"yosoy132.png"];
    NSData *imageData = UIImageJPEGRepresentation(roboPic, 1);
    [picker addAttachmentData:imageData mimeType:@"image/png" fileName:@"yosoy132.png"];
    
    
    NSString *mensaje = @"";
    
    //    NSString *mensaje = [NSString stringWithFormat:@"#VisitaDurango %@", msj];
    
    NSString *msj = [NSString stringWithFormat:@"#YoSoy132 %@", mensaje];
    
    NSString *emailBody = msj;
    [picker setMessageBody:emailBody isHTML:YES];
    
    [self presentModalViewController:picker animated:YES];
}


-(void)mailComposeController:(MFMailComposeViewController*)controller didFinishWithResult:(MFMailComposeResult)result error:(NSError*)error {
    
    [self dismissModalViewControllerAnimated:YES];
}

@end
