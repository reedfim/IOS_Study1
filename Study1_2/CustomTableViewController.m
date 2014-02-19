//
//  CustomTableViewController.m
//  Study1_2
//
//  Created by reedfim on 2014. 2. 19..
//  Copyright (c) 2014년 reedfim. All rights reserved.
//

#import "CustomTableViewController.h"
#import "CustomTableViewCell.h"
#import "CustomDetailTableViewController.h"

@interface CustomTableViewController ()

@end

@implementation CustomTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    
    //데이터 소스 초기화
    _carMakes = @[@"Chevy",
                  @"BMW",
                  @"Toyota",
                  @"Volvo",
                  @"Smart"];

    _carModels = @[@"Volt",
                  @"Mini",
                  @"Venza",
                  @"S60",
                  @"Fortwo"];
    
    _carImages = @[@"chevy_volt.jpg",
                   @"mini_clubman.jpg",
                   @"toyota_venza.jpg",
                   @"volvo_s60.jpg",
                   @"smart_fortwo.jpg"];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    return _carModels.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"customTableCell";
    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    long row = [indexPath row];
    cell.modeLabel.text = _carModels[row];
    cell.makeLabel.text = _carMakes[row];
    cell.carImage.image = [UIImage imageNamed:_carImages[row]];
    
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    }   
    else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/


#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    //showCustomDetail segue가 맞는지 확인하는 코드부터 시작
    if([[segue identifier] isEqualToString:@"showCustomDetail"]){
        CustomDetailTableViewController *detailViewController = [segue destinationViewController];
        NSIndexPath *myIndexPath = [self.tableView indexPathForSelectedRow]; //현재 선택한 셀의 indexPath를 가져오는 코드
        long row = [myIndexPath row];
        detailViewController.carDetailModel = @[_carMakes[row], _carModels[row], _carImages[row]]; //데이터 모델로부터 필요한 데이터를 추출한다.
    }
}



@end
