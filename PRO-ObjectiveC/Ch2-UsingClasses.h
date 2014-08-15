//
//  Ch2-UsingClasses.h
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Ch2UsingClasses : NSObject
{
    @protected //available to subclasses
    int myInt1;
    
    @private
    float  myFloat;
    
    @package
    double myDouble;
    
    //Property backed instnce variables ,
    //only accessible in class hierarchy
    @protected
    NSUInteger  _protons;
    NSUInteger  _neutrons;
    NSUInteger  _electrons;
    NSString*   _chemicalElement;
    NSString*   _atomicSymbol;
    
}
@property(readonly) NSUInteger  protons;
@property(readonly) NSUInteger  neutrons;
@property(readonly) NSUInteger  electrons;
@property(readonly,strong) NSString*   chemicalElement;

@property(nonatomic,strong,readwrite,getter=getThisProp,setter=setThisProp:)NSObject* thisProp;


@property (readonly) NSString* atomicSymbol;

-(NSUInteger) massNumber;

@end
