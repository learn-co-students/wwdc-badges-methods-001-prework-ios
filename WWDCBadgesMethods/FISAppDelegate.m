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


- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *greeting = [@"Hello, my name is " mutableCopy];
    
    [greeting appendFormat:@"%@.", speaker];
    
    return greeting;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    //NSLog(@"speakers: %li", [speakers count]);
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        
        greetings[i] = [self badgeForSpeaker:speakers[i]];
        
    }
    
    return greetings;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *greetings = [[NSMutableArray alloc] init];
    
    NSInteger dressingRoom;
    
    NSMutableString *speaker = [[NSMutableString alloc] init];
    
    NSString *welcome = @"Welcome, ";
    
    for (NSInteger i = 0; i < [speakers count]; i++) {
        
        NSMutableString *greeting = [welcome mutableCopy];
        
        dressingRoom = i + 1;
        
        speaker = speakers[i];
        
        [greeting appendFormat:@"%@! You'll be in dressing room %li.", speaker, dressingRoom];
        
        //NSLog(@"%@", greeting);
        
        greetings[i] = greeting;
    }
    
    return greetings;
}

@end
