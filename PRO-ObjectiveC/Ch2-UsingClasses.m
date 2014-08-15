//
//  Ch2-UsingClasses.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import "Ch2-UsingClasses.h"
/* adopt to a Protocol */

#import "Writer.h"

@implementation Ch2UsingClasses

@synthesize protons = instnce;

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self->_chemicalElement = @"None";
    }
    return self;
}

-(NSUInteger) massNumber
{
    NSUInteger protonsL =   INT_MAX;
    protonsL            =   [self protons];
    
    NSUInteger neutronsL    =   INT_MAX;
    neutronsL               =   [self neutrons];
    
    return protonsL + neutronsL ;
}

/* Explicit Definition */
-(void)setMyIntProperty:(int) value
{
    self->myInt1 = value;
}

-(void) write:(NSFileHandle*) file
{
    NSData* data    =   nil;
    data            =
    [[self chemicalElement]dataUsingEncoding:NSUTF8StringEncoding];
    
    [file writeData:data];
    
    [file closeFile];
}

@end
