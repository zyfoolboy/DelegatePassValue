//
//  NextViewController.m
//  Delegate
//
//  Created by deyi on 16/3/16.
//  Copyright © 2016年 zyfoolboy. All rights reserved.
//

#import "NextViewController.h"



@interface NextViewController ()
- (IBAction)backVC:(id)sender;

@end

@implementation NextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

- (IBAction)backVC:(id)sender {
    
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate backAValue:@"abc"];
}
@end
