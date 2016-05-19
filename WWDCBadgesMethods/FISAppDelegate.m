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

- (NSString *)badgeForSpeaker:(NSString *)speaker; {
    
    NSLog(@"\n\n\n\n\n%@\n\n\n\n\n\n", speaker);
// I applied this NSLog just to see what the NSString *speaker is printing out.
    
   NSMutableString *badge = [@"" mutableCopy];
    [badge appendFormat:@"Hello, my name is %@.", speaker];
    
    return badge;
}

- (NSArray *)badgesForSpeakers:(NSArray *)speakers; {
    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];

    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
         NSString *badgesSpeakers = [self badgeForSpeaker:speakers[i]];
// Calling in the previous method in the loop to addObject: to my mutable array.
        
      [mSpeakers addObject:badgesSpeakers];
        
    }
    
    return mSpeakers;
    
}

- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    
 // Welcome <speaker>! You'll be in dressing room <roomNumber>.'
    
    NSMutableArray *speakerWithRoom = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [speakers count]; i++) {
        
        NSString *speakersWithRoomMethod = @"";
       speakersWithRoomMethod = [speakersWithRoomMethod stringByAppendingFormat:@"Welcome, %@! You'll be in dressing room %lu.", speakers[i], i + 1];
// Created an empty string & utilized stringByAppendingFormat to apply the format of the sentence & ensure I could take NSString *speakersWithRoomMethod & addObject: to my mutable array.
        
        [speakerWithRoom addObject:speakersWithRoomMethod];
        
    }
    
    return speakerWithRoom;

}

@end
