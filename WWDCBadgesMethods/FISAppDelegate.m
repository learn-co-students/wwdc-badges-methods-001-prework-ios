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

- (NSString *) badgeForSpeaker:(NSString *)speaker; {

    NSMutableString *welcomeBadge = [[NSMutableString alloc] init];
    [welcomeBadge appendFormat:@"Hello, my name is %@.", speaker];
    return welcomeBadge;
}

- (NSArray *) badgesForSpeakers:(NSArray *)speakers;{
    NSMutableArray *allBadges = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i< [speakers count];i++){
        NSString *badgeString = [self badgeForSpeaker:speakers[i]];
        [allBadges addObject:badgeString];
    }
    return allBadges;
}

- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i < [speakers count]; i++) {
        NSUInteger roomNumber = i + 1;
        NSMutableString *welcomeGreeting = [[NSMutableString alloc] init];
        [welcomeGreeting appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        [greetings addObject:welcomeGreeting];
    }
    return greetings;
}


@end