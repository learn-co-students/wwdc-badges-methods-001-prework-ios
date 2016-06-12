
#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions{
    
  
    
    NSArray *speakers = @[ @"Adele Goldberg",
                           @"Edsger Dijkstra",
                           @"Joan Clarke",
                           @"Clarence Ellis",
                           @"Margaret Hamilton",
                           @"George Boole",
                           @"Tim Berners-Lee",
                           @"Jean Bartik"];

   

    
     NSString *speaker = @"Inigo Montoya";
    
    [self badgeForSpeaker:speaker];
    [self badgesForSpeakers:speakers];
    [self greetingsAndRoomAssignmentsForSpeakers:speakers];
                           

    
return YES;
}


-(NSString *)badgeForSpeaker:(NSString *)speaker{
    
    NSString *theBadge = [NSString stringWithFormat:@"%@ %@.", @"Hello, my name is", speaker];
   // NSLog(@"%@", theBadge);

    return theBadge;
}


-(NSArray *)badgesForSpeakers:(NSArray *)speakers{

    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger item = 0; item < [speakers count]; item++) {
        
        NSString *newSpeaker = [speakers[item]stringByAppendingString:@"."];
        NSString *newMessage = [@"Hello, my name is " stringByAppendingString:newSpeaker];
        [mSpeakers addObject:newMessage];
    }
    
    
    return mSpeakers;

}


-(NSArray *) greetingsAndRoomAssignmentsForSpeakers: (NSArray *)speakers{

    
    NSMutableArray *mSpeakers = [[NSMutableArray alloc] init];
    
    for (NSUInteger item = 0; item < [speakers count]; item++) {
        
        NSInteger roomNumber = item + 1;

        NSString *newSpeaker = [@"Welcome, "stringByAppendingString:speakers[item]];

        NSString *newMessage = [@"! You'll be in dressing room " stringByAppendingFormat:@"%ld",(long)roomNumber];
        
        NSString *puncMarks = @".";
        
        NSString *withMarks = [newMessage stringByAppendingString:puncMarks];

        
        
    NSString *newGreeing = [newSpeaker stringByAppendingString:withMarks];
        
        [mSpeakers addObject:newGreeing];
    
    }
    

    

    
    return mSpeakers;

}







@end
