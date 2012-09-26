//
//  PetClass.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PetClass : NSObject

typedef enum
{
    PETCLASS_DEFAULT = 0,
    PETCLASS_CAT = 1,
    PETCLASS_DOG = 2,
    PETCLASS_BIRD
}petType;

@interface PetClass : NSObject
{
    NSString *petName;
    int petWeight;
    int petFoodAmount;
    int petWaterAmount;
    int petLivesAvailable;
}

-(void)setPetName : (NSString *)newPetName;
-(void)setPetWeight : (int)newPetWeight;
-(void)setPetFoodAmount : (int)newPetFoodAmount;
-(void)setPetWaterAmount : (int)newPetWaterAmount;
-(void)setPetLivesAvailable : (int)newPetLivesAvailable;
-(NSString*)getPetName;
-(int)getPetWeight;
-(int)getPetFoodAmount;
-(int)getPetWaterAmount;
-(int)getPetLivesAvailable;

@end
