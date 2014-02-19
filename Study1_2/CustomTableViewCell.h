//
//  CustomTableViewCell.h
//  Study1_2
//
//  Created by reedfim on 2014. 2. 19..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UIImageView *carImage;
@property (strong, nonatomic) IBOutlet UILabel *makeLabel;
@property (strong, nonatomic) IBOutlet UILabel *modeLabel;

@end
