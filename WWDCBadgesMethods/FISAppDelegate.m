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
    
    NSArray *speakersTemplate = @[ @"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik" ];
    
    // create badgeLabels
    NSMutableArray *speakersBadges = [speakersTemplate mutableCopy];
    speakersBadges = [self badgesForSpeakers:speakersBadges];
    NSLog(@"%@", speakersBadges);
    
    // create greating and room assignments
    NSMutableArray *speakersGreetingsRooms = [speakersTemplate mutableCopy];
    speakersGreetingsRooms = [self greetingsAndRoomAssignmentsForSpeakers:speakersGreetingsRooms];
    NSLog(@"%@", speakersGreetingsRooms);
    
    
    
    // test badgeforSpeaker method
    NSString *name1 = @"Ron";
    NSString *badge1 = [self badgeForSpeaker:name1];
    //NSLog(@"%@ : %@", name1, badge1);
    
    return YES;
}

- (NSString *)badgeForSpeaker:(NSString *)speaker{
    // create this string: Hello, my name is <#speaker#>.
    
    NSMutableString *badgeLabel = [@"Hello, my name is" mutableCopy];
    [badgeLabel appendFormat:@" %@.", speaker];
    return badgeLabel;
}

- (NSMutableArray *)badgesForSpeakers:(NSMutableArray *)speakers{
    // return array of: Hello, my name is <#speaker#>.
    for(NSUInteger i = 0; i < [speakers count]; i++){
        NSString *badgeLabel = [self badgeForSpeaker:speakers[i]];
        speakers[i] = badgeLabel;
    }
    return speakers;
}

- (NSString *)greatingAndRoomAssignmentForSpeaker:(NSString *)speaker withRoom:(NSUInteger)room{
    // Welcome, <#speaker#>! You'll be in dressing room <#roomNumber#>.
    
    NSMutableString *message = [@"Welcome," mutableCopy];
    [message appendFormat:@" %@", speaker];
    [message appendFormat:@"! You'll be in dressing room %li", room];
    [message appendString:@"."];
    return message;
}

- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSMutableArray *)speakersGreetingsRooms{
    for(NSUInteger i = 0; i < [speakersGreetingsRooms count]; i++){
        NSString *greetingMessage = [self greatingAndRoomAssignmentForSpeaker:speakersGreetingsRooms[i] withRoom:i+1];
        speakersGreetingsRooms[i] = greetingMessage;
    }
    return speakersGreetingsRooms;
}

@end
