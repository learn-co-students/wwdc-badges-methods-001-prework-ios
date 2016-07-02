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
    
    NSMutableString *hello = [[NSMutableString alloc] init];
    
    for (NSUInteger i = 0; i < 8; i++) {
        
        if (i<7) {
            [hello appendString:@"Hello, my name is "];
            [hello appendString:speakers[i]];
            [hello appendString:@"., "];
        } else {
            
            [hello appendString:@"Hello, my name is "];
            [hello appendString:speakers[i]];
            [hello appendString:@"."];
        }
            
    }
    
    [allSpeakers addObject:hello];
    return allSpeakers;
}


- (NSArray*) greetingsAndRoomAssignmentsForSpeakers:(NSArray*)speakers {
    
    
    NSMutableString *helloRoomNumber = [[NSMutableString alloc] init];
      
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSMutableArray *roomNum = [[NSMutableArray alloc] init];
        [roomNum addObjectsFromArray:@[@"1",@"2",@"3",@"4",@"5",@"6",@"7",@"8"]];
        
        
        [helloRoomNumber appendString:@"Welcome, "];
        [helloRoomNumber appendString:speakers[i]];
        [helloRoomNumber appendString:@"you will be in room "];
        [helloRoomNumber appendString:roomNum[i]];
                                            
        
        NSLog(helloRoomNumber);
        
    }
    
    return helloRoomNumber;

}


@end
