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

- (NSString *)badgeForSpeaker:(NSString *)speaker; {
    
    NSString *welcomeSpeaker = [@"Hello, my name is " stringByAppendingFormat:@"%@.", speaker];
  
    return welcomeSpeaker;
    
}


- (NSArray *)badgesForSpeakers:(NSArray *)speakers; {
    
    NSMutableArray *individual = [[NSMutableArray alloc] init];
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speaker = speakers[i];
        individual[i] = [self badgeForSpeaker:speaker];
    }
        
    
    return individual;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    
    NSMutableArray *speakerDressingRoomWelcome = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *speaker = speakers[i];
        NSString *speakerWelcome = [@"Welcome, " stringByAppendingFormat:@"%@! ", speaker];
        NSString *speakerAndRoomNumber = [speakerWelcome stringByAppendingFormat:@"You'll be in dressing room %lu.", i+1];
        
        speakerDressingRoomWelcome[i] = speakerAndRoomNumber;
        
    }
    
    return speakerDressingRoomWelcome;
}


@end
