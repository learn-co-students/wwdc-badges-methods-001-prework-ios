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

// Implement Methods

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    NSString *result =@"";
    result= [result stringByAppendingFormat:@"Hello, my name is %@.",speaker];
    return result;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers; {
    NSMutableArray *result=[[NSMutableArray alloc] init];
    
    for (NSUInteger i=0; i<8; i++) {
        [result addObject:[self badgesForSpeakers:speakers[i]]];
    }
    return result;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    NSMutableArray *result=[[NSMutableArray alloc]init];
    
    for (NSUInteger i=0;i<8; i++) {
        [result addObject:[NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %li.", speakers[i],i+1]];
    }
    return result;
}

@end
