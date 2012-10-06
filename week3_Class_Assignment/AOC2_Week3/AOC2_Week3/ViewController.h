//
//  ViewController.h
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "addEventViewController.h"

@interface ViewController : UIViewController <PassEventDetails>
{
    IBOutlet UITextView *eventDetails;
}

-(IBAction)onClick:(id)sender;

@end
