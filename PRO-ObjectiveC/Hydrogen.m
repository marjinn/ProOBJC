//
//  Hydrogen.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/16/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import "Hydrogen.h"

@implementation Hydrogen

-(instancetype)initWithNeutrons: (NSUInteger) neurons
{
    if ((self = [super init]))
    {
        self->_chemicalElement  =   @"Hydrogen";
        self->_atomicSymbol     =   @"H";
        self->_protons          =   1;
        self->_neutrons         =   neurons;
    }
    
    return self;
}

/* Factory / Convenience */

+(instancetype)hydrogenWithNeutrons:(NSUInteger)neutrons
{
    Hydrogen* tmpHydrogen   =   nil;
    tmpHydrogen             =
    (Hydrogen*)[[[self class] alloc] initWithNeutrons:neutrons];
    
    return tmpHydrogen;
}
@end
