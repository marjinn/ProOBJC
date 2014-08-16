//
//  Hydrogen.h
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/16/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Ch2-UsingClasses.h"

@interface Hydrogen : Ch2UsingClasses

-(instancetype)initWithNeutrons: (NSUInteger) neurons;
+(instancetype)hydrogenWithNeutrons:(NSUInteger)neutrons;


-(NSString*)factoid;

@end
