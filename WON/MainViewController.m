//
//  MainViewController.m
//  WON
//
//  Created by Simon L on 5/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "MainViewController.h"
#import <Parse/Parse.h>
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    NSLog(@"hello world %f",self.view.bounds.size.width/10);
    
    
    self.tv = [[topView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/8)];
    [self.view addSubview:self.tv];
}

-(void)viewDidAppear:(BOOL)animated{
    PFUser *currentUser = [PFUser currentUser];
    if (currentUser) {
        NSLog(@"user");
     } else {
        // show the signup or login screen
          NSLog(@"no user");
         [self performSegueWithIdentifier: @"Login" sender: self];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UIStatusBarStyle)preferredStatusBarStyle
{
    return UIStatusBarStyleLightContent;
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if ([[segue identifier] isEqualToString:@"Login"]){
        
    }
}


@end
