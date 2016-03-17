//
//  ViewController.m
//  Delegate
//
//  Created by deyi on 16/3/16.
//  Copyright © 2016年 zyfoolboy. All rights reserved.
//

#import "ViewController.h"
#import "NextViewController.h"

@interface ViewController ()<NextViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *textLabel;

@end

@implementation ViewController

- (void)backAValue:(NSString *)str {
    self.textLabel.text = str;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showNext"]) {
        NextViewController *next = segue.destinationViewController;
        next.delegate = self;
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
