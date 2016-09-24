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
    

    
    
    
    
    
    
   ///////////////
     return YES;//
    /////////////
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

-(NSString *)badgeForSpeaker:(NSString *)speakers {
    NSString *badge = [NSString stringWithFormat:@"Hello, my name is %@.", speakers];
    return badge;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    NSMutableArray *badgesForSpeakers = [[NSMutableArray alloc] init];
    NSString *badge = @"";
    for (NSUInteger i = 0; i < 8; i++) {
        badge = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        [badgesForSpeakers addObject:badge];
    }
    return badgesForSpeakers;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    NSString *welcome = @"";
    NSMutableArray *roomAssignments = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < 8; i++) {
        welcome = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
        [roomAssignments addObject:welcome];
    }
    return roomAssignments;
}


@end
