//
//  ViewController.m
//  QCNightSchema
//
//  Created by QC.L on 15/8/20.
//  Copyright (c) 2015年 QC.L. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"切换夜间模式" style:UIBarButtonItemStylePlain target:self action:@selector(changeNightSchema:)];
    
}

- (void)changeNightSchema:(UIBarButtonItem *)sender
{
    NSLog(@"切换夜间模式%@", NSStringFromSelector(sender.action));
    sender.action = @selector(changeNormal:);
    sender.title = @"切换普通模式";

    
}

- (void)changeNormal:(UIBarButtonItem *)sender
{
    NSLog(@"切换普通模式%@", NSStringFromSelector(sender.action));
    sender.title = @"切换夜间模式";
    sender.action = @selector(changeNightSchema:);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
