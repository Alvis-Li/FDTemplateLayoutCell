//
//  TableViewCell.h
//  FDTemplateLayoutCell
//
//  Created by simple on 16/1/5.
//  Copyright © 2016年 levy.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TableViewCell : UITableViewCell

@property (strong, nonatomic) UILabel *titleLabel;
@property (strong, nonatomic) UILabel *contentLabel;
@property (strong, nonatomic) UIImageView *contentImageView;
@property (strong, nonatomic) UILabel *userLabel;
@property (strong, nonatomic) UILabel *timeLabel;
@end
