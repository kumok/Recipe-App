//
//  RecipesTableViewDataSource.m
//  Recipe App
//
//  Created by Duc Ho on 1/8/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipesTableViewDataSource.h"
#import "RARecipes.h"
#import "RATableViewCellGreen.h"
#import "RATableViewCellRed.h"

@implementation RecipesTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    [tableView registerClass:[RATableViewCellGreen class] forCellReuseIdentifier:@"Cell_Blue"];
    [tableView registerClass:[RATableViewCellRed class] forCellReuseIdentifier:@"Cell_Red"];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [RARecipes count];
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    return @"My Random Recipes";
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSString *identifier;
    
    identifier = indexPath.row % 2 == 0 ? @"Cell_Blue" : @"Cell_Red";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    cell.textLabel.text = [RARecipes titleAtIndex:indexPath.row];
    
    return cell;

}





@end
