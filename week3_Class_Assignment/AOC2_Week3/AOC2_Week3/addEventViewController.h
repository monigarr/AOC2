//
//  addEventViewController.h
//  AOC2_Week3
//
//  Created by Monica Peters on 10/3/12.
//  Copyright (c) 2012 Monica Peters. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"


@interface addEventViewController : UIViewController
{
    IBOutlet UITextField *textField;
    IBOutlet UIDatePicker *datePicker;
    CGRect textFieldFrame;
}


//process Buttons: Save, Close Keyboard
-(IBAction)onClick:(id)sender;

@end
