//
//  SHBaseViewController.m
//  SHRoundView
//
//  Created by joyshow on 2018/10/16.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHBaseViewController.h"

@interface SHBaseViewController ()

@end

@implementation SHBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self imageItemClick];
}

- (void)imageItemClick{
    
    [self.navigationController.navigationBar setTitleTextAttributes:
     @{
       NSFontAttributeName:[UIFont systemFontOfSize:18],
       NSForegroundColorAttributeName:KColor_lineblue
       }];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.interactivePopGestureRecognizer.delegate = (id)self;
    
    if (self.navigationController.viewControllers.count > 1) {
        
        UIImage *image = [UIImage imageNamed:@"back_image"];
        image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
        UIBarButtonItem *imageItem = [[UIBarButtonItem alloc]initWithImage:image style:UIBarButtonItemStylePlain target:self action:@selector(backClick:)];
        self.navigationItem.leftBarButtonItem = imageItem;
    }
}

- (void)backClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
