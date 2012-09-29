//
//  petCat.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petCat.h"

@implementation petCat

//setup setters and getters
@synthesize hairballs, petAgeInCatYears;

//initialize petCat, create instance
//set age to 1 year.
//set mood to nil
//set hairballs to nil
-(id)init
{
    self = [super init];
    //check to make sure initialized
    if (self != nil)
    {
        [self setPetAgeInHumanYears:1];
        [self setPetAgeInCatYears:3];
        [self setPetMood:nil];
        [self setPetNames:nil];
        [self setHairballs:1];
    }
    return self;
}

//over ride calculate pet age in human years method
//from our base class (PetAnimal)
-(void)calculatePetAgeInHumanYears
{
    [self setPetAgeInCatYears:(petAgeInHumanYears * 3)];
    NSLog(@"%i Cat Years = %i Human Years.", petAgeInCatYears, petAgeInHumanYears);
}

@end
