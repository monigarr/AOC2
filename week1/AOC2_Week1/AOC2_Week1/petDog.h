//
//  petDog.h
//  AOC2_Week1
//
//  Created by Monica Peters on 9/26/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import "PetClass.h"

@interface petDog : PetClass
{
    //how many friends does this dog have?
    @public
    int dogFriends;
}

-(int)getMood;
-(void)setDogFriends : (int)dogFriends;

@end
