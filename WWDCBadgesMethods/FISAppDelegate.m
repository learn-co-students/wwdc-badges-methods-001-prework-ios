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

-(NSString *)badgeForSpeaker:(NSString *)speaker{
    
    NSString *introduction = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
    
    return introduction;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *allIntroductions = [speakers mutableCopy];
    
    for(NSUInteger i = 0; i < [speakers count]; i++){
        allIntroductions[i] = [NSString stringWithFormat: @"Hello, my name is %@.", speakers[i]];
    }
    
    return allIntroductions;
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *allIntroductionsAndRoomAssignemnts = [speakers mutableCopy];
    
    for(NSUInteger i = 0; i < [speakers count]; i++){
        NSUInteger roomNumber = i + 1;
        allIntroductionsAndRoomAssignemnts[i] = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
    }

    return allIntroductionsAndRoomAssignemnts;
}


@end
