//
//  MainViewController.m
//  WON
//
//  Created by Simon L on 5/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import "MainViewController.h"
#import "Actividad.h"
#import <Parse/Parse.h>
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.navigationController.navigationBarHidden = YES;
    
    self.tv = [[topView alloc]initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height/8)];
    self.TableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.view.bounds.size.height/8, self.view.bounds.size.width, self.view.bounds.size.height*7/8) style:UITableViewStylePlain];
    self.TableView.delegate =self;
    self.TableView.dataSource = self;
    [self.view addSubview:self.tv];
    [self.view addSubview:self.TableView];
    [self.TableView reloadData];
    
    [self.tv.Crear addTarget:self
               action:@selector(crear:)
     forControlEvents:UIControlEventTouchUpInside];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}



-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    Actividad *cell = [tableView dequeueReusableCellWithIdentifier:@"MyIdentifier"];
    if (cell == nil) {
        cell = [[Actividad alloc] initWithStyle:UITableViewCellStyleDefault  reuseIdentifier:(@"cell")];
        cell.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height*1.5/8);
        [cell create];
    }
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return self.view.bounds.size.height*3/16;
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

- (void)crear:(UITapGestureRecognizer*)sender{
    [self performSegueWithIdentifier: @"Crear" sender: self];
}

@end
