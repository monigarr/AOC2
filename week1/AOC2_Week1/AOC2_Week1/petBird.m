//
//  petBird.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petBird.h"

@implementation petBird

-(id)init
{
    if (self = [super init])
    {
        petName = @"Puppy Face";
        petWeight = 12;
        petFoodAmount = 3;
        petThirstMeter = 2;
        birdSize = 13;
    }
    return self;
}

-(int)getBirdSize
{
    petWeight = ( petWeight / (birdSize * petFoodAmount));
    NSLog(@"The size for this bird is about %i inches", petWeight);
    return petWeight;
}

-(void)setBirdSize : (int)birdSizeInInches
{
    birdSize = birdSizeInInches;
    NSLog(@"The size for this bird is %i inches", birdSize);
}


@end
