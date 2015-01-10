//
//  TitleDetailViewController.m
//  Recipe App
//
//  Created by Duc Ho on 1/10/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TitleDetailViewController.h"
#import "RARecipes.h"

@interface TitleDetailViewController ()

@end

@implementation TitleDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    
    [self.view addSubview:scrollView];
    
    NSInteger previousHeight = 0;

    UILabel *labelDescription = [[UILabel alloc] initWithFrame:CGRectMake(10, 0, 300, 100)];
    
    labelDescription.numberOfLines = 0;
    labelDescription.textAlignment = NSTextAlignmentLeft;
    
    labelDescription.text = [RARecipes descriptionAtIndex:self.index];
    labelDescription.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:18];
    labelDescription.textColor = [UIColor redColor];
    [labelDescription sizeToFit];
    
    previousHeight = labelDescription.frame.size.height + labelDescription.frame.origin.y;
    previousHeight += 10;
//    labelRecipe.text = [RARecipes descriptionAtIndex:self.index];

    for (int i =0; i < [RARecipes ingredientCountAtIndex:self.index]; i++) {
        UILabel *ingredient = [[UILabel alloc] initWithFrame:CGRectMake(10, previousHeight, 200, 30)];
        ingredient.text = [RARecipes ingredientTypeAtIndex:i inRecipeAtIndex:self.index];
        ingredient.numberOfLines = 0;
//        ingredient.layer.borderWidth = 1;
//        ingredient.layer.borderColor = [UIColor blackColor].CGColor;
        
        UILabel *volumne = [[UILabel alloc] initWithFrame:CGRectMake(205, previousHeight, 150, 30)];
        volumne.text = [RARecipes ingredientVolumeAtIndex:i inRecipeAtIndex:self.index];
        
        previousHeight = volumne.frame.size.height + volumne.frame.origin.y;
        
        [scrollView addSubview:ingredient];
        [scrollView addSubview:volumne];
    }
    
    
    for (int i = 0; i<[RARecipes directionsAtIndex:self.index].count; i++)
    {
    UILabel *stepDescription = [[UILabel alloc]initWithFrame:CGRectMake(10, 10 + previousHeight, self.view.frame.size.width - 20, 150)];
        
    stepDescription.numberOfLines = 0;
//    stepDescription.layer.borderColor = [UIColor blackColor].CGColor;
//    stepDescription.layer.borderWidth = 1;
    
        stepDescription.text = [RARecipes directionsAtIndex:self.index][i];
        stepDescription.font = [UIFont fontWithName:@"BradleyHandITCTT-Bold" size:18];
        stepDescription.textColor = (i % 2 == 0) ? [UIColor orangeColor]:[UIColor greenColor];

        [stepDescription sizeToFit];
        previousHeight = stepDescription.frame.size.height + stepDescription.frame.origin.y;

        [scrollView addSubview:stepDescription];

    }
    
    [scrollView addSubview:labelDescription];
    
    
//    [scrollView addSubview:labelRecipe];
    
    scrollView.contentSize = CGSizeMake(320, previousHeight);

//    label.text = self.recipeTitle;
    
    self.title = self.recipeTitle;
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
