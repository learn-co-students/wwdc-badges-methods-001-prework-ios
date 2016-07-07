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


- (NSString *)badgeForSpeaker:(NSString *)string {
    NSString *myStr = [NSString stringWithFormat: @"Hello, my name is %@.", string];
    return myStr;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers
{
    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];
    
    NSArray *peakers = @[@"Adele Goldberg",
                        @"Edsger Dijkstra",
                        @"Joan Clarke",
                        @"Clarence Ellis",
                        @"Margaret Hamilton",
                        @"George Boole",
                        @"Tim Berners-Lee",
                        @"Jean Bartik"];
    
    
    for (NSUInteger i = 0; i < [peakers count]; i++) {
        NSString *greeting = [NSString stringWithFormat: @"Hello, my name is %@.", peakers[i]];
        [mSpeakers addObject:greeting];
    }
    return mSpeakers;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    
    NSArray *peakers = @[@"Adele Goldberg",
                         @"Edsger Dijkstra",
                         @"Joan Clarke",
                         @"Clarence Ellis",
                         @"Margaret Hamilton",
                         @"George Boole",
                         @"Tim Berners-Lee",
                         @"Jean Bartik"];
    
    for (NSUInteger i = 0; i < [peakers count]; i++) {
        NSInteger x = i + 1;
        NSString *speaker = peakers[i];
        NSString *assignment = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, x];
        [roomAssignments addObject:assignment];
    }
    return roomAssignments;
}




@end
