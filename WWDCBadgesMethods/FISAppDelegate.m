//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSString *greeting = @"Hello, my name is ";
    NSMutableString *newGreeting= [speaker mutableCopy];
    
    [newGreeting insertString:greeting atIndex:0];
    [newGreeting appendString:@"."];
    
    return newGreeting;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakersArray = [[NSMutableArray alloc] init];
    for (NSString *speaker in speakers) {
        NSString *string = [self badgeForSpeaker:speaker];
        
        [speakersArray addObject:string];
        
    }
    

        
    return speakersArray;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *speakersArray = [[NSMutableArray alloc] init];
    NSUInteger i = 1;
    for (NSString* speaker in speakers) {
        i = i + 1;
        NSMutableString *string = [speaker mutableCopy];
        [string insertString:@"Welcome, " atIndex:0];
        [string appendString:@"!"];
        [string appendString:@" You'll be in dressing room "];
        [string appendString:[NSString stringWithFormat:@"%lu", (unsigned long)i - 1]];
        [string appendString:@"."];
        
        [speakersArray addObject:string];
    }
    
    return speakersArray;
}

@end
