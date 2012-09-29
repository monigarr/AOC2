//
//  petDog.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is a subclass of petCat
//  petCat is a subclass of petFactory

#import "petAnimal.h"

@interface petDog : PetAnimal
{
    int barkLoudness;
}

typedef enum
{
    LOUD,
    LOUDER,
    LOUDEST
}barkLoudness;

//data members for pet's age in human years and dog years
@property int barkLoudness;
@property int petAgeInDogYears;

//over riding this from the base class (PetAnimal)
-(void)calculatePetAgeInHumanYears;

@end
