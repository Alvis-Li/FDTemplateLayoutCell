//
//  TableViewCell.m
//  FDTemplateLayoutCell
//
//  Created by simple on 16/1/5.
//  Copyright © 2016年 levy.com. All rights reserved.
//

#import "TableViewCell.h"
#import "Masonry.h"
@interface TableViewCell()

@end

@implementation TableViewCell


-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self createView];
        
        [self setttingViewAtuoLayout];
    }
    return self;
}

#pragma make 创建子控件
- (void) createView {
    
    UILabel *titleLabel = [[UILabel alloc] init];
    [self.contentView addSubview:titleLabel];
    self.titleLabel = titleLabel;
    
    UILabel *contentLabel = [[UILabel alloc] init];
    contentLabel.numberOfLines = 0;
    [self.contentView addSubview:contentLabel];
    self.contentLabel = contentLabel;
    
    UIImageView *contentImageView = [[UIImageView alloc] init];
    contentImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.contentView addSubview:contentImageView];
    self.contentImageView = contentImageView;
    
    UILabel *userLabel = [[UILabel alloc] init];
    [self.contentView addSubview:userLabel];
    self.userLabel = userLabel;
    
    UILabel *timeLabel = [[UILabel alloc] init];
    [self.contentView addSubview:timeLabel];
    self.timeLabel = timeLabel;
}


#pragma mark - 在此方法内使用 Masonry 设置控件的约束,设置约束不需要在layoutSubviews中设置，只需要在初始化的时候设置
- (void) setttingViewAtuoLayout {
    
    int magin = 4;
    int padding = 10;
    
    [self.titleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.and.left.mas_equalTo(self.contentView).offset(padding);    // 设置titleLabel上边跟左边与父控件的偏移量
        make.right.mas_equalTo(self.contentView.mas_right).offset(-padding); // 设置titleLabel右边与父控件的偏移量
    }];
    
    [self.contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.and.right.equalTo(self.titleLabel);                       // 设置contentLabel左边和右边对于titleLabel左右对齐
        make.top.mas_equalTo(self.titleLabel.mas_bottom).offset(magin);     // 设置contentLabel的上边对于titleLabel的下边的偏移量
    }];
    
    [self.contentImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_left);                        // 设置contentImageView的左边对于titleLabel的左边对齐
        make.top.mas_equalTo(self.contentLabel.mas_bottom).offset(magin);   // 设置contentImageView的上边对于contentLabel的下面的偏移量
    }];
    
    [self.userLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.titleLabel.mas_left);                        // 设置userLabel的左边对于titleLabel的左边对齐
        make.top.mas_equalTo(self.contentImageView.mas_bottom).offset(magin); // 设置userLabel的上边对于contentImageView的下边的偏移量
        make.bottom.mas_equalTo(self.contentView.mas_bottom).offset(-magin); // 设置userLabel的下边对于父控件的下面的偏移量
    }];
    
    [self.timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.bottom.and.top.equalTo(self.userLabel);                        // 设置timeLabel的上边与下边对于userLabel对齐
        make.right.equalTo(self.titleLabel.mas_right);                      // 设置timeLabel的右边对于titleLabel的右边对齐
    }];
    
}
- (void)awakeFromNib {
    // Initialization code
//    [super awakeFromNib];
   
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



@end
