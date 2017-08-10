//
//  TestTableViewCell.m
//  TableViewCell_Label高度自适应
//
//  Created by qian88 on 17/8/3.
//  Copyright © 2017年 qian88. All rights reserved.
//

#import "TestTableViewCell.h"

@interface TestTableViewCell (){
    
    __weak IBOutlet UILabel *testLab;
    
}

@end

@implementation TestTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}


-(void)refreshUIWithLabText:(NSString *)text{
    testLab.text =text;
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
