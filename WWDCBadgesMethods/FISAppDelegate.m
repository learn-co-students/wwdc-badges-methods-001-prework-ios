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

- (NSString*) badgeForSpeaker: (NSString *)speaker {
    
    NSMutableString *badges = [[NSMutableString alloc] init];
    
    if (speaker != nil) {
        
    [badges appendString:@"Hello, my name is "];
    [badges appendString:speaker];
    [badges appendString:@"."];
    
    }
    
    return badges;
}


- (NSArray*) badgesForSpeakers: (NSArray*)speakers {
    
    NSMutableArray *allSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *speakerBadge = [self badgeForSpeaker:speakers[i]];
        [allSpeakers addObject:speakerBadge];
    }
            
    return allSpeakers;
}


- (NSArray*) greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers {
    
    
    NSMutableArray *helloRoomNumber = [[NSMutableArray alloc] init];
      
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNum = i+1;
        
        NSString *welcomeGreeting = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i],roomNum];
        
        [helloRoomNumber addObject: welcomeGreeting];
    }
    
    return helloRoomNumber;

}


@end
