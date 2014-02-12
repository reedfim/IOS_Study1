//
//  ViewController.h
//  Study1_2
//
//  Created by reedfim on 2014. 2. 12..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIConvertViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouch:(id)sender;
@end
