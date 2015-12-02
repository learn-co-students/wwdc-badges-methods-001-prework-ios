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
    
    NSString *inigoMontoya = @"Inigo Montoya";
    NSString *inigoMontoyaBadge = [NSString stringWithFormat:@"Hello, my name is %@.", inigoMontoya];
    
    return inigoMontoyaBadge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mBadges = [[NSMutableArray alloc] init];
    
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
    
        NSString *speakersBadges = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
        
        [mBadges addObject:speakersBadges];
    
    }
    
    return mBadges;
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
    
    NSMutableArray *mGreetingsAndRoomAssignments = [[NSMutableArray alloc] init];
    
    NSArray *roomAssignments = @[@"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
   
    for (NSUInteger i = 0; i < [speakers count]; i++) {
       
       NSString *speakersBadges = [NSString stringWithFormat:@"Welcome, %@! You will be in dressing room %@.", speakers[i], roomAssignments[i]];
    
       [mGreetingsAndRoomAssignments addObject:speakersBadges];
    }
    return mGreetingsAndRoomAssignments ;
    
}

@end

