//
//  Header.h
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//
@import Foundation;

@protocol Writer <NSObject>

-(void)write:(NSFileHandle*)file;

@end