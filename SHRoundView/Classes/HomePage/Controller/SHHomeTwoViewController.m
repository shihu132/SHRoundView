//
//  SHHomeTwoViewController.m
//  SHRoundView
//
//  Created by joyshow on 2018/10/23.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHHomeTwoViewController.h"

@interface SHHomeTwoViewController ()

@end

@implementation SHHomeTwoViewController

// 非storyBoard(xib或非xib)都走这个方法
- (instancetype)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil {
    NSLog(@"%s", __FUNCTION__);
    if (self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil]) {
        
    }
    return self;
}

// 如果连接了串联图storyBoard 走这个方法
- (instancetype)initWithCoder:(NSCoder *)aDecoder {
    NSLog(@"%s", __FUNCTION__);
    if (self = [super initWithCoder:aDecoder]) {
        
    }
    return self;
}

// xib 加载 完成
- (void)awakeFromNib {
    [super awakeFromNib];
    NSLog(@"%s", __FUNCTION__);
}

// 加载视图(默认从nib)
- (void)loadView {
    NSLog(@"%s", __FUNCTION__);
    self.view = [[UIView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.view.backgroundColor = [UIColor redColor];
}

//视图控制器中的视图加载完成，viewController自带的view加载完成
- (void)viewDidLoad {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor yellowColor];
   
    UIButton *sh_btn = [[UIButton alloc]initWithFrame:CGRectMake(30, 110, 100, 100)];
    sh_btn.backgroundColor = [UIColor orangeColor];
    [sh_btn addTarget:self action:@selector(sh_btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sh_btn];
    
}

- (void)sh_btnClick{
    
    !_testStringBlock ? :_testStringBlock(@"我在这里");
   
}

//视图将要出现
- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewWillAppear:animated];
}

// view 即将布局其 Subviews
- (void)viewWillLayoutSubviews {
    NSLog(@"%s", __FUNCTION__);
    [super viewWillLayoutSubviews];
}

// view 已经布局其 Subviews
- (void)viewDidLayoutSubviews {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidLayoutSubviews];
}

//视图已经出现
- (void)viewDidAppear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidAppear:animated];
}

//视图将要消失
- (void)viewWillDisappear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewWillDisappear:animated];
}

//视图已经消失
- (void)viewDidDisappear:(BOOL)animated {
    NSLog(@"%s", __FUNCTION__);
    [super viewDidDisappear:animated];
}

//出现内存警告  //模拟内存警告:点击模拟器->hardware-> Simulate Memory Warning
- (void)didReceiveMemoryWarning {
    NSLog(@"didReceiveMemoryWarning = [2]%s", __FUNCTION__);
    [super didReceiveMemoryWarning];
}

// 视图被销毁
- (void)dealloc {
    NSLog(@"dealloc =[2] %s", __FUNCTION__);
}

/**
 //1.进入一级控制器
     [57132:3936914] -[SHHomeViewController initWithNibName:bundle:]
     [57132:3936914] -[SHHomeViewController loadView]
     [57132:3936914] -[SHHomeViewController viewDidLoad]
     [57132:3936914] -[SHHomeViewController viewWillAppear:]
     [57132:3936914] -[SHHomeViewController viewWillLayoutSubviews]
     [57132:3936914] -[SHHomeViewController viewDidLayoutSubviews]
     [57132:3936914] -[SHHomeViewController viewDidAppear:]
 
 //2.进入二级控制器
     [57132:3936914] -[SHHomeTwoViewController initWithNibName:bundle:]
     [57132:3936914] -[SHHomeTwoViewController loadView]
     [57132:3936914] -[SHHomeTwoViewController viewDidLoad]
     [57132:3936914] -[SHHomeViewController viewWillDisappear:]
     [57132:3936914] -[SHHomeTwoViewController viewWillAppear:]
     [57132:3936914] -[SHHomeTwoViewController viewWillLayoutSubviews]
     [57132:3936914] -[SHHomeTwoViewController viewDidLayoutSubviews]
     [57132:3936914] -[SHHomeViewController viewDidDisappear:]
     [57132:3936914] -[SHHomeTwoViewController viewDidAppear:]

 
 //3.返回一级控制器
     [57132:3936914] -[SHHomeTwoViewController viewWillDisappear:]
     [57132:3936914] -[SHHomeViewController viewWillAppear:]
     [57132:3936914] -[SHHomeTwoViewController viewDidDisappear:]
     [57132:3936914] -[SHHomeViewController viewDidAppear:]
     [57132:3936914] dealloc =[2] -[SHHomeTwoViewController dealloc]
 
 
 //4.在进入二级控制器
     [57132:3936914] -[SHHomeTwoViewController initWithNibName:bundle:]
     [57132:3936914] -[SHHomeTwoViewController loadView]
     [57132:3936914] -[SHHomeTwoViewController viewDidLoad]
     [57132:3936914] -[SHHomeViewController viewWillDisappear:]
     [57132:3936914] -[SHHomeTwoViewController viewWillAppear:]
     [57132:3936914] -[SHHomeTwoViewController viewWillLayoutSubviews]
     [57132:3936914] -[SHHomeTwoViewController viewDidLayoutSubviews]
     [57132:3936914] -[SHHomeViewController viewDidDisappear:]
     [57132:3936914] -[SHHomeTwoViewController viewDidAppear:]

 
 //5.直接返回到主界面
     [57132:3936914] -[SHHomeViewController viewWillDisappear:]
     [57132:3936914] -[SHHomeViewController viewDidDisappear:]
     [57132:3936914] dealloc =[1] -[SHHomeViewController dealloc]
 
 */

@end
