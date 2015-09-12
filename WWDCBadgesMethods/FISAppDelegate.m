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

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *greetingString = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return greetingString;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
  /*  NSMutableArray *listOfGreeting = [[NSMutableArray alloc] init];
    for(NSUInteger i=0; i<8; i++) {
        [listOfGreeting addObject:[NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]]];
    }*/
    NSMutableArray *listOfGreeting = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i< [speakers count]; i++) {
        [listOfGreeting addObject:[self badgeForSpeaker:speakers[i]]];
    }
    return listOfGreeting;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *listOfGreetingAndRoomNumber = [[NSMutableArray alloc] init];
    for(NSUInteger i=0; i<[speakers count];i++){
        NSNumber *roomNumber = @(i+1);
        [listOfGreetingAndRoomNumber addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %@.", speakers[i], roomNumber]];
    }

    return listOfGreetingAndRoomNumber;
}

@end
