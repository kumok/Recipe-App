//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Duc Ho on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"
#import "TitleDetailViewController.h"
#import "RARecipes.h"

@interface RecipeViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RecipesTableViewDataSource *dataSource;


@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame];
    self.dataSource = [[RecipesTableViewDataSource alloc] init];
    [self.dataSource registerTableView:self.tableView];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSString *title;
    title = [RARecipes titleAtIndex:indexPath.row];
    
    //    [self.navigationController pushViewController:detailViewController animated:YES];
    TitleDetailViewController * detailController = [[TitleDetailViewController alloc] init];
    detailController.recipeTitle = title;
    detailController.index = indexPath.row;
    
    [self.navigationController pushViewController:detailController animated:YES];
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
