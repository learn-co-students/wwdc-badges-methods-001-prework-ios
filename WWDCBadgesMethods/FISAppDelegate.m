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


- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *hello = [NSString stringWithFormat:@"Hello, my name is %@." , speaker]; //return an interpolated string that includes the speaker's name
    return  hello;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *helloArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < 8; i++) { //return a mutable array of eight (8) interpolated strings
        [helloArray addObject:[self badgesForSpeakers:speakers[i]]];
    }
    return helloArray;
}

//Advanced

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *roomForSpeakers = [[NSMutableArray alloc]init];
    
    for (NSUInteger i=0; i < 8; i++){
        [roomForSpeakers addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1]]; ////create an interpolated string with each speaker's name and their dressing room number
    }
    return roomForSpeakers;
}


@end
