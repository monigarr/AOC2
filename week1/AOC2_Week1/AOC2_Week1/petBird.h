//
//  petBird.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "PetClass.h"

@interface petBird : PetClass
{
    @public
    int birdSize;
}

-(int)getBirdSize;
-(void)setBirdSize : (int)birdSizeInInches;

@end
