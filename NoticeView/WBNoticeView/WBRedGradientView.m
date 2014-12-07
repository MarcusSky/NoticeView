//
//  WBRedGradientView.m
//  GradientView
//
//  Created by Tito Ciuro on 6/3/12.
//  Copyright (c) 2012 Webbo, LLC. All rights reserved.
//

#import <QuartzCore/QuartzCore.h>

#import "WBRedGradientView.h"

@implementation WBRedGradientView

- (void)drawRect:(CGRect)rect
{
    
    UIColor *redTop = [UIColor colorWithRed:167/255.0f green:26/255.0f blue:20/255.0f alpha:1];
    UIColor *redBot = [UIColor colorWithRed:167/255.0f green:26/255.0f blue:20/255.0f alpha:1];
    
    CAGradientLayer *gradient = [CAGradientLayer layer];
    gradient.frame = self.bounds;
    gradient.colors = [NSArray arrayWithObjects:
                       (id)redTop.CGColor,
                       (id)redBot.CGColor,
                       nil];
    gradient.locations = [NSArray arrayWithObjects:
                          [NSNumber numberWithFloat:0.0f],
                          [NSNumber numberWithFloat:0.7],
                          nil];
    
    [self.layer insertSublayer:gradient atIndex:0];
    self.layer.needsDisplayOnBoundsChange = YES;
}

@end
