//
//  NextViewController.h
//  Delegate
//
//  Created by deyi on 16/3/16.
//  Copyright © 2016年 zyfoolboy. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NextViewControllerDelegate

- (void)backAValue:(NSString *)str;

@end

@interface NextViewController : UIViewController

@property (nonatomic, assign) id<NextViewControllerDelegate> delegate;

@end
