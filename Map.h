//
//  Map.h
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>
#import <CoreLocation/CoreLocation.h>

@interface Map : NSObject <MKAnnotation>{
    
    CLLocationCoordinate2D coordinate;
    NSString *title;
    NSString *subtitle;
    
}

@property (nonatomic,assign)CLLocationCoordinate2D coordinate;
@property (nonatomic,copy) NSString *title;
@property (nonatomic,copy) NSString *subtitle;

-(id)initWithTitle:(NSString*)theTitle subtitle:(NSString*)theSubTitle andCoordinate: (CLLocationCoordinate2D) theCoordinate;

@end
