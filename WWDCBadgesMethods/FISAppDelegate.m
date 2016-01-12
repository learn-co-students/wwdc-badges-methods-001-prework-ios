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
    
    //NSArray *conferenceSpeakers = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    //for(NSInteger i = 0; i < [conferenceSpeakers count]; i++){
    //    NSLog(@ "Hello, my name is %@.", conferenceSpeakers[i]);
    //}

    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakersArray = [NSMutableArray array];
    FISAppDelegate *badge = [[FISAppDelegate alloc] init];
    NSInteger numberOfSpeakers = 8;
    for(NSInteger i = 0; i < numberOfSpeakers; i++){
        NSString *badges = [badge badgeForSpeaker: speakers[i]];
        [speakersArray addObject:badges];
    }
    return speakersArray;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *speakersGreetingArray = [NSMutableArray array];
    NSInteger numberOfSpeakers = 8;
    for(NSInteger i = 0; i < numberOfSpeakers; i++){
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [speakersGreetingArray addObject:greeting];
    }
    return speakersGreetingArray;
}

@end
