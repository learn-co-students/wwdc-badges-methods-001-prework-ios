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

- (NSString *)badgeForSpeaker:(NSString *)string{
    NSString *result = @"";
    NSArray *conferenceSpeakers = @[ @"Adele Goldberg", @"Edsger Dijsktra", @"Joan Clarke", @"Clarence Ellis", @"Maragaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    for (NSUInteger i = 0; i < [conferenceSpeakers count]; i++){
        result = [NSString stringWithFormat:@"Hello, my name is %@.", conferenceSpeakers[i]];
    }
    return result;
}



//Having trouble with this one
/*- (NSArray *)badgesForSpeakers:(NSArray *)NSArray{
    NSString *result = @"";
    NSArray *badgesForSpeakers = @[ @"Adele Goldberg", @"Edsger Dijsktra", @"Joan Clarke", @"Clarence Ellis", @"Maragaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
   // NSMutableString *welcome = [badgesForSpeakers mutableCopy];
     for (NSUInteger i = 0; i < [badgesForSpeakers count]; i++){
         result = [NSString stringWithFormat:@"Hello, my name is %@.", attendees[i]];
     }
    return result;
}*/

- (NSString *)greetingsAndRoomAssignmentsForSpeakers:(NSString *)string{
    NSString *result = @"";
    NSArray *conferenceSpeakers = @[ @"Adele Goldberg", @"Edsger Dijsktra", @"Joan Clarke", @"Clarence Ellis", @"Maragaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    //Use a for loop here?
      NSArray *roomAssignments = @[ @"1", @"2", @"3", @"4", @"5", @"6", @"7", @"8"];
    for (NSUInteger i = 0; i < [conferenceSpeakers count]; i++){
        result = [NSString stringWithFormat:@"Welcome, %@! You'll be in dressing room %@.", conferenceSpeakers[i], roomAssignments[i]];
    }
    return result;
}

/*- (NSArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers{
    [NSString *speakers:@"%@ %@ %@ %@ %@ %@ %@ %@", @"Adele Goldberg", @"Edsger Dijsktra", @"Joan Clarke", @"Clarence Ellis", @"Maragaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    [NSString *roomNumbers:@"%@ %@ %@ %@ %@ %@ %@ %@", 1, 2, 3, 4, 5, 6, 7, 8];
    NSString *welcomeNew = @"Welcome, *speakers. You'll be in dressing room # ";
    NSMutableString *welcome = [welcomeNew mutableCopy];
    return welcome;
}*/


@end
