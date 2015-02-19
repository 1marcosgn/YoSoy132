//
//  Map.m
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Map.h"

@implementation Map 
@synthesize coordinate,title,subtitle;

-(id)initWithTitle:(NSString*)theTitle subtitle:(NSString*)theSubTitle andCoordinate: (CLLocationCoordinate2D) theCoordinate
{
    if((self=[super init]))
    {
        
        title=[theTitle copy];
        subtitle=[theSubTitle copy];
        coordinate=theCoordinate;
    }
    return self;
    
    
}


@end
