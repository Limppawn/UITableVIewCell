//
//  RootViewController.m
//  TableViewCell_Label高度自适应
//
//  Created by qian88 on 17/8/3.
//  Copyright © 2017年 qian88. All rights reserved.
//

#import "RootViewController.h"
#import "TestTableViewCell.h"


@interface RootViewController ()<UITableViewDelegate,UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *baseTableView;
@property (nonatomic,strong)NSArray *dataArr;

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self creatBaseUI];
}

- (void)creatBaseUI{
    
    [_baseTableView registerNib:[UINib nibWithNibName:@"TestTableViewCell" bundle:nil] forCellReuseIdentifier:@"TestTableViewCell"];
    
//    _dataArr =@[@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母"];
    _dataArr=@[@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字",@"kdfdjfjkdfj\ndkfjeoifjewijf\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj\ndjfewjfewj",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字”。在日常生活中，“文字”还可以指书面语、语言、文章、字等。视觉符号形式，突破口语的时间和空间限制。例如汉字、拉丁字母",@"文字在语言学中指书面语的视觉形式，古代把独体字叫做“文”，把合体字叫做“字”，如今联合起来叫做“文字”，文字的基本个体叫做“字"];
    _baseTableView.tableFooterView =[[UIView alloc]initWithFrame:CGRectZero];
    
}

#pragma  mark ====== UITableViewDelegate && UITableViewDataSource ======
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return _dataArr.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return [self heightforCellWithLabText:_dataArr[indexPath.section]];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    TestTableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"TestTableViewCell"];
    [cell refreshUIWithLabText:_dataArr[indexPath.section]];
    cell.selectionStyle =UITableViewCellSelectionStyleNone;
    return cell;
}


#pragma mark ====== Help Methods ======

/*
 懒加载
 */
-(NSArray *)dataArr{
    if (!_dataArr) {
        _dataArr =[NSMutableArray array];
    }
    return _dataArr;
}


/*
 根据label内容返回自适应高度
 */

- (CGFloat)heightforCellWithLabText:(NSString *)text{
    
//    CGFloat *cellHeigh=0;
    CGRect testRect =[text boundingRectWithSize:CGSizeMake(self.view.frame.size.width-4-2*8, 30000) options:NSStringDrawingUsesLineFragmentOrigin attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:14.0f]} context:nil];
    
//    cellHeigh = testRect.size.height;
    
    NSLog(@"Cell_Heigh:===>%f",testRect.size.height);
    return testRect.size.height +4*8;
//    return 100;
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
