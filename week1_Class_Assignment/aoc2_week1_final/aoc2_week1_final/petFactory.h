//
//  petFactory.h
//  aoc2_week1_final
//
//  Created by Monica Peters on 9/27/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "petCat.h"
#import "petDog.h"
#import "petBird.h"

@interface petFactory : NSObject

//static class method
+(petCat *)createNewPet : (int)petType;

@end
