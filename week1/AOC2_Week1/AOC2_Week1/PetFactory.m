//
//  PetFactory.m
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "PetFactory.h"
#import "PetClass.h"
#import "petCat.h"
#import "petDog.h"
#import "petBird.h"

@implementation PetFactory

+(PetClass *)createPet : (NSInteger)petType
{
    if(petType == 0)
    {
        NSLog(@"You did not win a Pet this time.");
        return nil;
    }
    else if(petType == 1)
    {
        return [[petCat alloc]init];
    }
    else if(petType == 2)
    {
        return [[petDog alloc] init];
    }
    else if (petType == 3)
    {
        return [[petBird alloc]init];
    }
    
    return nil;
}

@end
