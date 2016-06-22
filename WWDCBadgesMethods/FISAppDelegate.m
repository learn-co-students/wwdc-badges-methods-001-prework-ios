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
    
    [self badgesForSpeakers:@[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"]];

    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {

    return [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
}

- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {

        badges[i] = [self badgeForSpeaker:speakers[i]];
    }
    
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {

    NSMutableArray *greetings = [[NSMutableArray alloc] init];

    for (NSInteger i = 0; i < [speakers count]; i++) {
        
        greetings[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i], i + 1];
    }
    
    return greetings;
}

@end
