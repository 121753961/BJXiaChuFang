//
//  BJHomeViewController.m
//  BJXiaChuFang
//
//  Created by kuangbing on 15/12/8.
//  Copyright © 2015年 Kunagbing. All rights reserved.
//

#import "BJHomeViewController.h"
#import "BJHomeResultModel.h"
#import "BJHomeContentModel.h"
#import "BJHomeIssuesModel.h"
#import "BJHomeIssuesItemsModel.h"
#import "BJHomeItemsContentsModel.h"
#import "BJHomeTemplateHeaderCell.h"
#import "BJHomeOneGroup_01_Cell.h"
#import "BJHomeCellTool.h"
#import "BJHomeRequestTool.h"
#import "BJHomeNavResultModel.h"
#import "BJHomeNavContentModel.h"
#import "BJHomeNavModel.h"

@interface BJHomeViewController ()<UITableViewDataSource,UITableViewDelegate>

/** 首页数据模型数组*/
@property (nonatomic, strong) NSArray *homeDataArray;

@property (nonatomic, strong) BJHomeNavContentModel *homeNavContentModel;

@end

@implementation BJHomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"首页";
    self.myTableView.delegate = self;
    self.myTableView.dataSource = self;
    
    [self setNanView];
    
    [self setUpData];
}

-(void)setUpData{
    NSString *url = BJXiaChuFangUrl;

    NSDictionary *params = @{@"version" : @"2.0"};
    
    [BJHomeRequestTool resultHomeData:url params:params success:^(id result) {
        //BJLog(@"%@",result);
        self.homeDataArray = [self keyToObject:result];
        [self.myTableView reloadData];
    }];
    
    [BJHomeRequestTool resultHomeNavData:BJHomeNavUrl params:params success:^(id result) {
        //BJLog(@"%@",result);
        self.homeNavContentModel = [self navKeyToObject:result];
        [self.myTableView reloadData];
    }];
}

-(BJHomeNavContentModel *)navKeyToObject:(id)result{
    BJHomeNavResultModel *navResult = [BJHomeNavResultModel mj_objectWithKeyValues:result];
    
    [BJHomeNavContentModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{@"navs" : [BJHomeNavModel class]};
    }];
    
    BJHomeNavContentModel *navContent = [BJHomeNavContentModel mj_objectWithKeyValues:navResult.content];
    
    return navContent;
}

-(NSArray *)keyToObject:(id)result{
    NSArray *dataArray;
    BJHomeResultModel *homeResult = [BJHomeResultModel mj_objectWithKeyValues:result];
    
    [BJHomeContentModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{@"issues" : @"BJHomeIssuesModel"};
    }];
    
    [BJHomeIssuesModel mj_setupObjectClassInArray:^NSDictionary *{
        return @{@"items" : @"BJHomeIssuesItemsModel"};
    }];
    
    [BJHomeIssuesItemsModel mj_setupReplacedKeyFromPropertyName:^NSDictionary *{
        return @{@"ID":@"id",@"Template":@"template"};
    }];
    
    BJHomeContentModel *homeContent = [BJHomeContentModel mj_objectWithKeyValues:homeResult.content];
    
    dataArray = homeContent.issues;
    
    return dataArray;
}



#pragma mark - ******** 返回多少组
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return self.homeDataArray.count + 1;
}

#pragma mark - ******** 返回每组多少行
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section == 0) {
        return 3;
    }else{
        BJHomeIssuesModel *issuesModel = [self.homeDataArray objectAtIndex:section -1];
        
        return issuesModel.items.count;
    }
}

#pragma mark - ******** 返回每个 Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return [BJHomeCellTool tableView:tableView indexPath:indexPath navContent:self.homeNavContentModel];
    }else{
        BJHomeIssuesModel *issuesModel = [self.homeDataArray objectAtIndex:indexPath.section - 1];
        BJHomeIssuesItemsModel *issuesItems = [issuesModel.items objectAtIndex:indexPath.row];
    
        return [BJHomeCellTool tableView:tableView indexPath:indexPath issuesItems:issuesItems];
        
    }

}

#pragma mark - ******** 返回每个 Cell 的高度
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section == 0) {
        return [BJHomeCellTool cellHeightTableView:tableView WithIndexPath:indexPath];
    }else{
        BJHomeIssuesModel *issuesModel = [self.homeDataArray objectAtIndex:indexPath.section - 1];
        BJHomeIssuesItemsModel *issuesItems = [issuesModel.items objectAtIndex:indexPath.row];
        return [BJHomeCellTool cellHeightWithIssuesItems:issuesItems];
    }
}

#pragma mark - ******** 返回每组头部View
-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        UIView *headerView = [[UIView alloc] init];
        return headerView;
    }else{
        BJHomeIssuesModel *issuesModel = [self.homeDataArray objectAtIndex:section - 1];
        BJHomeTemplateHeaderCell *header = [BJHomeTemplateHeaderCell cellWithTableView:tableView];
        header.issuesModel = issuesModel;
        return header;
    }
}

#pragma mark - ******** 每个 Cell 头部的高度
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    if (section == 0) {
        return 1.0f;
    }else{
        return 60.0f;
    } 
}

#pragma mark - ******** 每个 Cell 底部的高度
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == 0) {
        return 10.0f;
    }else{
        return 1.0f;
    }
    
}


// 导航条
-(void)setNanView{
    
    self.navigationItem.leftBarButtonItem = [UIBarButtonItem itemWithImage:@"leftPageButtonBackgroundNormal" highImage:@"leftPageButtonBackgroundNormal" target:self action:@selector(leftBarButtonItemAction)];
    
    self.navigationItem.rightBarButtonItem = [UIBarButtonItem itemWithImage:@"shoppingCart" highImage:@"shoppingCart" target:self action:@selector(regihtBarButtonItemAction)];
    
    UITextField *searchBox = [[UITextField alloc] initWithFrame:CGRectMake(80, 24.f, self.view.frame.size.width - 100, 25)];
    [searchBox setBorderStyle:UITextBorderStyleRoundedRect];
    searchBox.layer.borderColor = [[UIColor whiteColor] CGColor];
    searchBox.layer.borderWidth = 1.0f;
    searchBox.layer.cornerRadius = 5.0f;//圆角
    searchBox.backgroundColor = kColor(246, 246, 246);
    searchBox.alpha = 0.8;
    searchBox.font = [UIFont systemFontOfSize:13];
    searchBox.attributedPlaceholder = [[NSAttributedString alloc] initWithString:@"菜谱、食材" attributes:@{NSForegroundColorAttributeName: [UIColor lightGrayColor]}];
    searchBox.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    
    self.navigationItem.titleView = searchBox;
}

// 导航条左边的按钮的 actioin
-(void)leftBarButtonItemAction{
}

// 导航条右边的按钮的 actioin
-(void)regihtBarButtonItemAction{
}



@end
