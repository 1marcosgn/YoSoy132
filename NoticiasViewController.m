//
//  NoticiasViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 01/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "NoticiasViewController.h"

@interface NoticiasViewController ()

@end

@implementation NoticiasViewController

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
        
    //[self cargarImagen];
    
    [self cargarImagen];

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


-(IBAction)refrescaImagen:(id)sender{
    
    [self cargarImagen];
    
}


//Carga la imagen
-(void)cargarImagen{
    
    webMuestra.backgroundColor = [UIColor blackColor];
    webMuestra.opaque = NO;
    
    NSString *urlPath = @"http://fipade.com/images/stories/launch.png";
    
    [webMuestra loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:urlPath]]]; 
    timer = [NSTimer scheduledTimerWithTimeInterval:(1.0/2.0) target:self selector:@selector(loading) userInfo:nil repeats:YES];
    
    /*
    NSURL *urlone= [NSURL URLWithString:urlPath];
    
    NSData *new=[NSData dataWithContentsOfURL:urlone];
    
    [imagenNoticias setImage:[UIImage imageWithData:new]];
    */
    
        
}

-(void)loading{
    
    if(webMuestra.loading){
        [actividad startAnimating];
        actividad.alpha = 1.0;
    }
    else {
        [actividad stopAnimating];
        actividad.alpha = 0.0;
    }
    
}

@end
