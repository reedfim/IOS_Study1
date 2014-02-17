//
//  UIConvertViewController.h
//  Study1_2
//
//  Created by reedfim on 2014. 2. 12..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Scene2ViewController.h"

@interface UIConvertViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *tempText;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UILabel *scene1Label;

- (IBAction)convertTemp:(id)sender;
- (IBAction)textFieldReturn:(id)sender;
- (IBAction)backgroundTouch:(id)sender;
@end
