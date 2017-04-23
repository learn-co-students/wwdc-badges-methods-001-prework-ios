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
    
    NSString *testname = @"test name";
    
    NSLog(@"%@", [self badgeForSpeaker:testname]);
    
    return YES;
}

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *badge = [[NSMutableString alloc] init];
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
    
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {

    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++)
    {
       NSString *badgeString =  [self badgeForSpeaker:speakers[i]];
       
        [badges addObject:badgeString];
        
    }
    
    return badges;
    

}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++)
    {
        
        NSUInteger roomNumber = i+1;
        NSMutableString *welcomeGreeting = [[NSMutableString alloc] init];
        [welcomeGreeting appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [greetings addObject:welcomeGreeting];
        
    }
    
    return greetings;
}

@end
