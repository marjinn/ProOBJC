//
//  Ch1GettingStarted.m
//  PRO-ObjectiveC
//
//  Created by mar Jinn on 8/14/14.
//  Copyright (c) 2014 mar Jinn. All rights reserved.
//

#import "Ch1GettingStarted.h"
#define PRINT_FUNCTION_NAME     printf("\n Function Name \n %s\n",__PRETTY_FUNCTION__)

@implementation Ch1GettingStarted



void displayDateWithFormat (void)
{
    PRINT_FUNCTION_NAME;
    
    //Display thee current date ,formatted nicely
    
    NSDate* dateTime    =   nil;
    dateTime            =   [NSDate date];
    
    NSDateFormatter* dateFormat =   nil;
    dateFormat                  =   [NSDateFormatter new];
    
    [dateFormat setDateFormat:@"EEE MMM d,yyy"];
    
    NSString* dateString    =   nil;
    dateString              =   [dateFormat stringFromDate:dateTime];
    NSLog(@"Todays date is %@",dateString);
    
    
    return;
}

@end
