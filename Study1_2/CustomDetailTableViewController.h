//
//  CustomDetailTableViewController.h
//  Study1_2
//
//  Created by reedfim on 2014. 2. 19..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomDetailTableViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UILabel *carMakeLabel;
@property (strong, nonatomic) IBOutlet UILabel *carModelLabel;
@property (strong, nonatomic) IBOutlet UIImageView *carImageView;

@property (strong, nonatomic) NSArray *carDetailModel;

@end
