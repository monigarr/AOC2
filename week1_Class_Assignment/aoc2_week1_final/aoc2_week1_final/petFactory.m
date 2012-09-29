//
//  petFactory.m
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "petFactory.h"

@implementation petFactory

+(PetAnimal *)createNewPet : (int)petAnimal
{
    //if cat is requested, make a cat
    if (petAnimal == CAT)
    {
        return [[petCat alloc]init];
    }
    
    //if dog is requested, make a dog
    else if (petAnimal == DOG)
    {
        return [[petDog alloc]init];
    }
    
    //if bird is requested, make a bird
    else if (petAnimal == BIRD)
    {
        return [[petBird alloc]init];
    }
    else return nil;
}
@end
