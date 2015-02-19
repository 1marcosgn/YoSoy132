//
//  UbicacionesViewController.m
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "UbicacionesViewController.h"

@interface UbicacionesViewController ()

@end

@implementation UbicacionesViewController
@synthesize mapView,locationManager;

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
    
    //self.mapView.delegate=self;

	
    MKCoordinateRegion location;
    location.center.latitude=19.332283;
    location.center.longitude=-99.188148;
    location.span.longitudeDelta=0.01;
    location.span.latitudeDelta=0.01;
    Map *mapAnnotation=[[Map alloc]init] ;
    mapAnnotation.title=@"UNAM";
    mapAnnotation.subtitle=@"";
    mapAnnotation.coordinate=location.center;
    [mapView setRegion:location animated:YES];
    
    
    [self.mapView addAnnotation:mapAnnotation];
    
    
    MKCoordinateRegion location1;
    location1.center.latitude=19.50088;
    location1.center.longitude=-99.137256;
    location1.span.longitudeDelta=0.01;
    location1.span.latitudeDelta=0.01;
    Map *mapAnnotation1=[[Map alloc]init] ;
    mapAnnotation1.title=@"IPN";
    mapAnnotation1.subtitle=@"";
    mapAnnotation1.coordinate=location1.center;
    [mapView setRegion:location1 animated:YES];
    
    
    [self.mapView addAnnotation:mapAnnotation1];

    
    
    MKCoordinateRegion location2;
    location2.center.latitude=19.451256;
    location2.center.longitude=-99.136934;
    location2.span.longitudeDelta=0.01;
    location2.span.latitudeDelta=0.01;
    Map *mapAnnotation2=[[Map alloc]init] ;
    mapAnnotation2.title=@"Tlatelolco";
    mapAnnotation2.subtitle=@"";
    mapAnnotation2.coordinate=location2.center;
    [mapView setRegion:location2 animated:YES];
    
    
    [self.mapView addAnnotation:mapAnnotation2];
    
    
    MKCoordinateRegion location3;
    location3.center.latitude=19.369591;
    location3.center.longitude=-99.26553;
    location3.span.longitudeDelta=0.01;
    location3.span.latitudeDelta=0.01;
    Map *mapAnnotation3=[[Map alloc]init] ;
    mapAnnotation3.title=@"IBERO";
    mapAnnotation3.subtitle=@"";
    mapAnnotation3.coordinate=location3.center;
    [mapView setRegion:location3 animated:YES];
    
    
    [self.mapView addAnnotation:mapAnnotation3];
    
    
    MKCoordinateRegion location4;
    location4.center.latitude=19.369591;
    location4.center.longitude=-99.26553;
    location4.span.longitudeDelta=0.01;
    location4.span.latitudeDelta=0.01;
    Map *mapAnnotation4=[[Map alloc]init] ;
    mapAnnotation4.title=@"El Ángel";
    mapAnnotation4.subtitle=@"Monumento a La Independencia";
    mapAnnotation4.coordinate=location4.center;
    [mapView setRegion:location4 animated:YES];
    
    
    [self.mapView addAnnotation:mapAnnotation4];
    
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

- (void)mapView:(MKMapView *)mapView didAddAnnotationViews:(NSArray *)views{
    
    CGRect visibleRect = [mapView annotationVisibleRect];
    
    for(MKAnnotationView *view in views)
        
    {
        
        if([view isKindOfClass:[Mapann class]])
            
        {
            
            CGRect endFrame = view.frame;
            
            
            CGRect startFrame = endFrame;
            
            startFrame.origin.y = visibleRect.origin.y - startFrame.size.height;
            
            view.frame = startFrame;
            
            [UIView beginAnimations:@"drop" context:NULL];
            
            [UIView setAnimationDuration:2];
            
            view.frame = endFrame;
            
            [UIView commitAnimations];
            
        }
        
    }
    
    
    MKAnnotationView *annotationView=[views objectAtIndex:0];
    id<MKAnnotation> mp=[annotationView annotation];
    MKCoordinateRegion region=MKCoordinateRegionMakeWithDistance([mp coordinate],55500, 55500);
    [self.mapView setRegion:region];
    
}

- (MKAnnotationView *)mapView:(MKMapView *)mv viewForAnnotation:(id <MKAnnotation>)annotation
{
    if([annotation isKindOfClass:[MKUserLocation class]])
        return nil;
    NSString *annotationIdentifier = @"PinViewAnnotation";
    
    Mapann *pinView = (Mapann *) [mapView dequeueReusableAnnotationViewWithIdentifier:annotationIdentifier];
    if (!pinView)
    {
        pinView = [[Mapann alloc] initWithAnnotation:annotation reuseIdentifier:annotationIdentifier];
        
        
        
        //[pinView setPinColor:MKPinAnnotationColorGreen];
        
        // pinView.animatesDrop = YES;
        
        pinView.canShowCallout = YES;
        
        
        
        UIImageView *houseIconView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"1.png"]];
        
        [houseIconView setFrame:CGRectMake(0, 0, 30, 30)];
        
        pinView.leftCalloutAccessoryView = houseIconView;
        
        //[houseIconView release];        
        
    }
    
    else
        
    {
        
        pinView.annotation = annotation;
        
    }
    
    return pinView;
    
}

@end
