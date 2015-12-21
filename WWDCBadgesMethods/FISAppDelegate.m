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



//- (NSString *) badgeForSpeaker:(NSString *)speaker {
//    NSString *enterSpeaker = [NSString stringWithFormat: @"Hello, my name is %@.", speaker];
//    
//    return enterSpeaker;

//}


- (NSArray *) badgesForSpeakers: (NSArray *) speakers {
    NSMutableArray *allSpeakersIntro = [speakers mutableCopy];
    NSUInteger numOfSpeakers = [speakers count];
    for (NSUInteger i = 0; i < numOfSpeakers; i++) {
        allSpeakersIntro[i] = [NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
    }
    
    return allSpeakersIntro;
   
    
}
//ver.3
- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    NSMutableArray *hellosAndRoom = [[NSMutableArray alloc] init];
    for (NSUInteger i =0; i< [speakers count]; i++) {
        NSMutableString *hellosAndRoomString = [@"Welcome, " mutableCopy];
        [hellosAndRoomString appendFormat:@"%@! You'll be in dressing room %lu.", speakers[i], i+1];
        hellosAndRoom[i] = hellosAndRoomString;
    }
    return hellosAndRoom;
}
//ver.1
//- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
 //   NSMutableArray *speakerList = [speakers mutableCopy];
  //  for (NSUInteger i = 0; i < [speakerList count]; i++) {
    //    NSString *intro = @"Welcome %@!", *speakerList;
     //   NSString *roomAssignment = @"You'll be in dressing room %lu.",  *i; + 1;
         // NSString *fullIntroAndRoom = [alloc[init]];
    //  NSString  *fullIntroAndRoom = [intro stringByAppendingString:roomAssignment];

    //}
   // return fullIntroAndRoom;

//}ver.2
//
//- (NSArray *) greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers {
//    NSMutableArray *hellosAndRoomNums = [speakers mutableCopy];
//    NSUInteger numOfSpeakers = [speakers count];
//    for (NSUInteger i = 0; i < numOfSpeakers; i++) {
//        NSUInteger roomAssignment = i + 1;
//        
//        hellosAndRoomNums = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressingroom %lu.",speakers, roomAssignment];
//
//    }
//    
//    
//    return hellosAndRoomNums ;
//   
//    
//}

                      
@end
