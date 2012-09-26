//
//  petCat.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "PetClass.h"

@interface petCat : PetClass
{
    //1 is a little bratty and 5 is brattiest
    @public
    int catBrattinessMood;
}

-(int)getMood;
-(void)setBrattinessMood : (int)howBratty;

@end
