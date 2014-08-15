//
//  main.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Ch1GettingStarted.h"
#import "Ch2-UsingClasses.h"

void calledJobs (void);

int main(int argc, const char * argv[])
{
    @autoreleasepool
    {
        // insert code here...
        NSLog(@"Hello, World!");
        
        calledJobs();
        
    }
    return 0;
}


void calledJobs (void)
{
    //ch1
    displayDateWithFormat ();
    
    //ch2
    Ch2UsingClasses* atom  =   nil;
    atom                    =   [[Ch2UsingClasses alloc]init];
    
    NSLog(@"Atom chemical name: %@",[atom chemicalElement]);
    
}