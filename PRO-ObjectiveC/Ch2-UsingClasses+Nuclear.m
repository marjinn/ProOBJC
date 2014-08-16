//
//  Ch2-GettingStarted+Nuclear.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import "Ch2-UsingClasses+Nuclear.h"


@interface Ch2UsingClasses ()
{
    //Instance Variables
}

//Property declarations
//Method declarations
@end


@implementation Ch2UsingClasses (Nuclear)

-(NSInteger) atomicNumber
{
    NSInteger protons = [self protons];
    
    return protons;
}
@end
