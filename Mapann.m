//
//  Mapann.m
//  YoSoy132
//
//  Created by Claudia Oliva on 12/06/12.
//  Copyright (c) 2012 ASTA. All rights reserved.
//

#import "Mapann.h"

@implementation Mapann
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


- (id)initWithAnnotation:(id <MKAnnotation>)annotation reuseIdentifier:(NSString *)reuseIdentifier

{
    self = [super initWithAnnotation:annotation reuseIdentifier:reuseIdentifier];
    
    if (self != nil)
        
    {
        
        CGRect frame = self.frame;
        
        frame.size = CGSizeMake(60.0, 85.0);
        
        self.frame = frame;
        
        self.backgroundColor = [UIColor clearColor];
        
        self.centerOffset = CGPointMake(-5, -5);
        
        
    }
    
    return self;
    
}
-(void) drawRect:(CGRect)rect

{
    //placemark
    [[UIImage imageNamed:@"2.png"] drawInRect:CGRectMake(15, 0, 30, 30)];
    
}

@end
