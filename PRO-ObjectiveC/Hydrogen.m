//
//  Hydrogen.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/16/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import "Hydrogen.h"
#import "HydrogenHelper.h"

@interface Hydrogen()
{
    @private
    HydrogenHelper* helper;
}
@end


@implementation Hydrogen

-(instancetype)initWithNeutrons: (NSUInteger) neurons
{
    if ((self = [super init]))
    {
        self->_chemicalElement  =   @"Hydrogen";
        self->_atomicSymbol     =   @"H";
        self->_protons          =   1;
        self->_neutrons         =   neurons;
        
        /* Create the helper for Message Forwarding */
        self->helper            =   [HydrogenHelper new];
        
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


/*
 Message Forwarding
 Objective-C object messaging finds and executes a method on an object based on the message it receives. The object type can either be specified in the code and statically bound at compile time (static typing) or be unspecified with its type resolved at runtime (dynamic typing). In either case,
 at runtime, the receiving object interprets the message to determine which method to invoke. This runtime resolution of method calls makes it easy to change and/or extend programs dynamically, but also carries with it a certain risk: it permits a program to send a message to an object that may not have a corresponding method attached to it. Under the default scenario, if this happens, a runtime exception is thrown. However, Objective-C provides another option: through a mechanism called message forwarding, it is possible to configure an object to perform user-defined processing when
 it receives a message not mapped to its set of methods. Message forwarding enables an object to perform a variety of logic on any unrecognized message it receives, perhaps parceling it out to a different receiver who can respond to the message, sending any unrecognized messages to the same destination, or simply silently “swallowing” the message (i.e., performing no processing nor causing a runtime error to be thrown).
 Forwarding Options
 Objective-C provides two types of message forwarding options that you can use.
 􏰀 Fast forwarding: Classes that descend from NSObject can implement fast forwarding by overriding the NSObject forwardingTargetForSelector: method to forward the method to another object. This technique makes it appear like the implementations of your object and the forwarding object are combined. This simulates the behavior of multiple inheritance of class implementations. It works well if you have a target class that defines all the possible messages that your object can consume.
 􏰀 Normal (full) forwarding: Classes that descend from NSObject can implement normal forwarding by overriding the NSObject forwardInvocation: method. This technique enables your object to use the full contents of the message (target, method name, parameters).

 ￼Fast forwarding works well if you have a target class that defines all the possible messages that
 your object can consume. Full fowarding should be used if you don’t have such a target class or you would like to perform other processing on message receipt (for example, just logging and swallowing the message).
 */

-(id)forwardingTargetForSelector:(SEL)aSelector
{
    if ([self->helper respondsToSelector:aSelector])
    {
        return self->helper;
    }
    
    return nil;
}

@end
