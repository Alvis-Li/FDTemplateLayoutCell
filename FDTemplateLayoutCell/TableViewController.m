//
//  TableViewController.m
//  FDTemplateLayoutCell
//
//  Created by simple on 16/1/5.
//  Copyright © 2016年 levy.com. All rights reserved.
//

#import "TableViewController.h"
#import "UITableView+FDTemplateLayoutCell.h"
#import "TableViewCell.h"

@interface TableViewController ()

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tableView.fd_debugLogEnabled = YES;
    [self.tableView registerClass:[TableViewCell class] forCellReuseIdentifier:@"TableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Incomplete implementation, return the number of sections
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete implementation, return the number of rows
    return 5;
}
-(void)configureCell:(TableViewCell *)cell atIndexPath:(NSIndexPath *)indexPath {
//    cell.fd_enforceFrameLayout = NO;
    cell.titleLabel.text = @"feed.title";
    cell.contentLabel.text = @"feed.contentfeed.contentfeed.contentfeed.contentfeed.contentfeed.contentfeed.contentfeed.contentfeed.content";
    cell.contentImageView.image = [UIImage imageNamed:@"xiazai"];
    cell.userLabel.text = @"feed.username";
    cell.timeLabel.text = @"feed.time";
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"TableViewCell" forIndexPath:indexPath];
   // [cell settingViewLayout];
    [self configureCell:cell atIndexPath:indexPath];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [tableView fd_heightForCellWithIdentifier:@"TableViewCell" cacheByIndexPath:indexPath configuration:^(TableViewCell *cell) {
         [self configureCell:cell atIndexPath:indexPath];
    }];
}



@end
