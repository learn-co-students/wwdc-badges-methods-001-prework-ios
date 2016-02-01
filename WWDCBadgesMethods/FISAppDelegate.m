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
    
    NSArray *names = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    [self badgesForSpeakers:names];
    [self greetingsAndRoomAssignmentsForSpeakers:names];

    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
   
    NSString *speakers = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
    return speakers;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
   
    NSMutableArray *badges = [[NSMutableArray alloc] init]; // create empty array
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        badges[i] = [self badgeForSpeaker:speakers[i]]; // loop through array of speakers
    }
    
    NSLog(@"%@", badges);
    return badges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetingAndRoomNumber = [speakers mutableCopy];
    NSUInteger roomNumber = 0;
    
    for (NSUInteger i = 0; i < [greetingAndRoomNumber count]; i++) {
        roomNumber = i + 1;
        greetingAndRoomNumber[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
    }
    
    NSLog(@"%@", greetingAndRoomNumber);
    return greetingAndRoomNumber;
}

@end
