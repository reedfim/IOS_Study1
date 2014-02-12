//
//  ViewController.m
//  Study1_2
//
//  Created by reedfim on 2014. 2. 12..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import "UIConvertViewController.h"

@interface UIConvertViewController ()

@end

@implementation UIConvertViewController

- (IBAction)convertTemp:(id)sender
{
    double farenheit = [_tempText.text doubleValue];
    double celsius = (farenheit -32) / 1.8;
    NSLog(@"clicked");
    NSString *resultString = [[NSString alloc] initWithFormat:@"Celsius %f", celsius];
    _resultLabel.text = resultString;
}

- (IBAction)textFieldReturn:(id)sender
{
    [sender resignFirstResponder];
}

- (IBAction)backgroundTouch:(id)sender
{
    [_tempText resignFirstResponder];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
