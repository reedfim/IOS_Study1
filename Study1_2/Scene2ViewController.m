//
//  Scene2ViewController.m
//  Study1_2
//
//  Created by reedfim on 2014. 2. 17..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import "Scene2ViewController.h"

@interface Scene2ViewController ()

@end

@implementation Scene2ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _scene2Label.text = _labelText;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnedScene2:(UIStoryboardSegue*) segue
{
    
}



@end
