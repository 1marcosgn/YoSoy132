//
//  UbicacionesViewController.h
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>
#import "Map.h" 
#import "Mapann.h"

@interface UbicacionesViewController : UIViewController <MKMapViewDelegate>{
    
    IBOutlet MKMapView *mapView;
    
}


@property (nonatomic,retain)IBOutlet MKMapView *mapView;
@property (strong,nonatomic) IBOutlet CLLocationManager *locationManager;

//-(IBAction)getlocation;
//
//-(IBAction)setmap:(id)sender;


@end
