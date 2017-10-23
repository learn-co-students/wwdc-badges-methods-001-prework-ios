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
-(NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString * result = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    return result;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badgesForAllSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i<speakers.count; i++){
        NSString *badgeName = [self badgeForSpeaker:speakers[i]];
        [badgesForAllSpeakers addObject:badgeName];
    }
    
    return badgesForAllSpeakers;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSMutableArray *allGreetingsAndAssignments = [[NSMutableArray alloc] init];
    
    NSUInteger roomNumber = 0;
    for (NSUInteger i = 0; i<speakers.count; i++) {
        roomNumber = i +1;
        NSString *greeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        [allGreetingsAndAssignments addObject:greeting];
    }
    return allGreetingsAndAssignments;

}


@end
