//
//  PetFactory.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PetClass.h"

@interface PetFactory : NSObject

+(PetClass *)createPet : (NSInteger)petType;

@end
