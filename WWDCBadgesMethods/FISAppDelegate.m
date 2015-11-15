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

/*
 
 * Define your methods between application:didFinishLaunchingWithOptions and the @end marker
 
 */

    
- (NSString *)badgeForSpeakers:(NSString *)speaker; { //noun singular form
    //return nil;
    NSString *result = [NSString stringWithFormat:@"Hello, my name is %@." , speaker]; // string result, appended
    return result;
    }
- (NSMutableArray *)badgesForSpeakers:(NSArray *)speakers; {
   //return nil;
    NSMutableArray*badgesForSpeakers = [[NSMutableArray alloc]init];
    NSString*result=@"";
   //NSArray*badgesForSpeakers = @[@"Adele Goldberg", @"Edsger Dijkstra", @"Joan Clarke", @"Clarence Ellis", @"Margaret Hamilton", @"George Boole", @"Tim Berners-Lee", @"Jean Bartik"];
    //for(NSInteger i=0; i< [badgesForSpeakers count]; i++){
        for(NSInteger i=0; i<8; i++){
        //NSLog(@"Hello, my name is %@.", badgesForSpeakers[i]);
            result=[NSString stringWithFormat:@"Hello, my name is %@.", speakers[i]];
            [badgesForSpeakers addObject:result];
        }
        return badgesForSpeakers;
    }
- (NSMutableArray *)greetingsAndRoomAssignmentsForSpeakers:(NSArray *)speakers; {
    //return nil;
    NSMutableArray*greetingsAndRoomAssignmentsForSpeakers=[[NSMutableArray alloc]init];
    NSString*welcome=@"";
    for(NSUInteger i=0; i<8; i++){
        welcome=[NSString stringWithFormat: @"Welcome, %@! You'll be in dressing room %lu.", speakers[i],i+1];
        [greetingsAndRoomAssignmentsForSpeakers addObject:welcome];
    }
    return greetingsAndRoomAssignmentsForSpeakers;
}
@end
