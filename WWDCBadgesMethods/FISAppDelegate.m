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

- (NSString*) badgeForSpeaker:(NSString *)speaker{
    return [NSString  stringWithFormat:@"Hello, my name is %@.",speaker];
}

- (NSArray*) badgesForSpeakers:(NSArray *)speakers{
    NSMutableArray *a = [NSMutableArray new];
    for(NSUInteger i=0; i<[speakers count]; i++){
        [a addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return a;
}

//@"Welcome, Adele Goldberg! You'll be in dressing room 1.",
- (NSArray*) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *a = [NSMutableArray new];
    for(NSUInteger i=0; i<[speakers count]; i++){
        [a addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.",speakers[i],i+1]];
    }
    return a;
}

@end
