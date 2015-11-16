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

- (NSString *)badgeForSpeakers:(NSString *)speakers {
    //return nil;
    NSString *speakerBadge = [NSString stringWithFormat:@"Hello, my name is %@." , speakers];
    return  speakerBadge; // speakers
}
- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers; {
    //return nil;
    NSMutableArray*badgesForSpeakers=[[NSMutableArray alloc]init];
    NSString*speakerBadge=@""; // returns empty
    for (NSInteger i = 0; i < 8; i++) {
       speakerBadge= [NSString stringWithFormat:@"Hello, my name is %@", speakers[i]];
        [badgesForSpeakers addObject:speakerBadge];
    }
    return badgesForSpeakers; // badges
}
- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers { //roomAssignment
    //return nil;
    NSMutableArray*roomAssignments=[[NSMutableArray alloc]init];
    NSString*greeting=@"";
    for(NSInteger i=0; i<8; i++){
        greeting=[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i+1];
    }
    return roomAssignments; // roomAssignments
}

@end
