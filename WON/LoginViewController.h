//
//  LoginViewController.h
//  WON
//
//  Created by Simon L on 6/12/15.
//  Copyright © 2015 Simon L. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController <UITextFieldDelegate,UIScrollViewDelegate,UIAlertViewDelegate>

@property (strong) UITextField *Username;
@property (strong) UITextField *Password;
@property UIButton *Login;
@property UIButton *FBLogin;
@property UIScrollView *Scroll;


@end
