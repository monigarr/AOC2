//
//  petDog.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is a subclass of petCat
//  petCat is a subclass of petFactory

#import "petCat.h"

@interface petDog : petCat

//data members for pet's age in human years and cat years
@property int petAgeInHumanYears;
@property int petAgeInDogYears;

@end
