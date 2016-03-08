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

-(NSString *)badgeForSpeaker: (NSString *) speaker {
    
    
    NSMutableString *enteredString = [speaker mutableCopy];
    
    NSString *returnString = [NSString stringWithFormat:@"Hello, my name is %@.", enteredString];
    return returnString;
}


-(NSArray *) badgesForSpeakers: (NSArray *) speakers {
    
    NSMutableArray *array = [NSMutableArray new];
    
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        NSString *speaker = [speakers objectAtIndex:i];
        
        NSString *string = [NSString stringWithFormat:@"Hello, my name is %@.", speaker];
    
        [array addObject:string];
        
    }
    
    
    
    return array;
}


-(NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *MewTwo = [NSMutableArray new];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
        NSString *speaker = [speakers objectAtIndex:i];
        NSString *input = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speaker, i + 1];
        
        [MewTwo addObject:input];
    }
    
    
    return MewTwo;
}



@end




























