//
//  FISAppDelegate.m
//  WWDCBadgesMethods
//
//  Created by Chris Gonzales on 5/28/14.
//  Copyright (c) 2014 FIS. All rights reserved.
//

#import "FISAppDelegate.h"

@implementation FISAppDelegate
/*
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    return YES;
}

-(NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *badge = [speaker mutableCopy];
    badge = [NSMutableString stringWithFormat:@"Hello, my name is %@.", badge];
    
    return badge;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *allSpeakersBadges = [[NSMutableArray alloc] init];
    
    for (NSString *speaker in allSpeakersBadges) {
        NSString *badge = [self badgeForSpeaker:speaker];
        
        [allSpeakersBadges addObject:badge];
    }
    
    return allSpeakersBadges;
    
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    
    NSMutableArray *welcomeGuestAssignment = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSUInteger roomNumber = i + 1;
        NSMutableString *welcome = [[NSMutableString alloc] init];
        [welcome appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [welcomeGuestAssignment addObject:welcome];
    }
    
    return welcomeGuestAssignment;
    
}
*/
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    NSString *testname = @"test name";
    NSLog(@"%@", [self badgeForSpeaker:testname]);
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker {
    
    NSMutableString *badge = [[NSMutableString alloc] init];
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
    
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *badges = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSString *badgeString = [self badgeForSpeaker:speakers[i]];
        [badges addObject:badgeString];
    }
    
    return badges;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *welcomeGuestAssignment = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        NSUInteger roomNumber = i + 1;
        
        NSMutableString *welcomeGreeting = [[NSMutableString alloc] init];
        [welcomeGreeting appendFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], roomNumber];
        
        [welcomeGuestAssignment addObject:welcomeGreeting];
        
    }
    
    return welcomeGuestAssignment;
    
}


@end
