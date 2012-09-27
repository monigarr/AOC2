//
//  petBird.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//  This is a subclass of petCat
//  petCat is a subclass of petFactory

#import "petCat.h"

@interface petBird : petCat
{
    int birdCageSize;
}

typedef enum
{
    SMALL,
    MEDIUM,
    LARGE
} birdCageSize;

@property int birdCageSize;
@property NSString *birdHappiness;
@property int petAgeInBirdYears;

@end
