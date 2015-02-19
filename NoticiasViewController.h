//
//  NoticiasViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NoticiasViewController : UIViewController{
    
    IBOutlet UIImageView *imagenNoticias;
    
    IBOutlet UIWebView *webMuestra;
    
    IBOutlet UIActivityIndicatorView *actividad;
    NSTimer *timer;
    
}

-(IBAction)refrescaImagen:(id)sender;

@end
