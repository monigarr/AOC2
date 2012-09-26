//
//  petCat.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petCat.h"

@implementation petCat

-(id)init
{
    if (self = [super init])
    {
        petName = @"Cutey Pie";
        petWeight = 3;
        petFoodAmount = 3;
        petThirstMeter = 2;
        catBrattinessMood = 0;
    }
    return self;
}

-(int)getMood
{
    catBrattinessMood = (petThirstMeter * (petFoodAmount * petWeight));
    NSLog(@"The cat is at %i on the mood meter", catBrattinessMood);
    return catBrattinessMood;
}

-(void)setBrattinessMood:(int)howBratty
{
    NSLog(@"The cat is %i on the mood meter", catBrattinessMood);
}

@end
