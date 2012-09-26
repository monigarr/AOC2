//
//  petDog.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petDog.h"

@implementation petDog

-(id)init
{
    if (self = [super init])
    {
        petName = @"Puppy Face";
        petWeight = 12;
        petFoodAmount = 3;
        petThirstMeter = 2;
        dogFriends = 13;
    }
    return self;
}

-(int)getDogFriends
{
    dogFriends = (petThirstMeter * (7 * petFoodAmount / petWeight));
    NSLog(@"The dogs need %i bowls of water.", dogFriends);
    return dogFriends;
}

-(void)setPetThirstmeter : (int)setPetThirstMeter
{
    petThirstMeter = setPetThirstMeter;
    NSLog(@"The dogs need %i bowls of water, they are thirsty!", petThirstMeter);
}

@end
