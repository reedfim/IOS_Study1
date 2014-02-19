//
//  CustomTableViewController.h
//  Study1_2
//
//  Created by reedfim on 2014. 2. 19..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CustomTableViewController : UITableViewController


/**
 테이블뷰의 데이터를 관리하기 위한 데이터소스를 생성
 */
@property (nonatomic, strong) NSArray *carImages;
@property (nonatomic, strong) NSArray *carMakes;
@property (nonatomic, strong) NSArray *carModels;

@end
