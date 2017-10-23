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






-(NSString *)badgeForSpeaker:(NSString *)speaker{
   
    NSMutableString *greetings = [[NSMutableString alloc]initWithString:@"Hello, my name is "];
    [greetings appendString:speaker];
    [greetings appendString:@"."];
    
    return greetings;
}

-(NSArray *)badgesForSpeakers:(NSArray *)speakers{
    
    
    NSMutableArray *badgesArray = [[NSMutableArray alloc]init];
    for (NSUInteger i = 0 ; i <speakers.count; i++) {
        NSString *badge = [self badgeForSpeaker:speakers[i]];
        [badgesArray addObject:badge];

    }
    
    return badgesArray;
    
}

-(NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    
    NSMutableArray *completeGreetingArray = [[NSMutableArray alloc]init];
    
    for (NSUInteger i = 0; i < speakers.count; i++) {
       
        NSUInteger *roomNumber = i+1;
        
        NSString *dressingRoomInfo = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i],roomNumber];
        [completeGreetingArray addObject:dressingRoomInfo];
        
    }
    
    return completeGreetingArray;
    
}
@end
