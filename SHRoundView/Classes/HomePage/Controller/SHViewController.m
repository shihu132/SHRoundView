//
//  SHViewController.m
//  SHRoundView
//
//  Created by joyshow on 2018/10/16.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import "SHViewController.h"
#import "HomeModel.h"
#import "SHRoundview.h"

@interface SHViewController ()
@property (nonatomic , strong) UIButton *button;
@property (nonatomic , strong) SHRoundview *sh_roundview;
@property (nonatomic , strong) NSMutableArray *datasource;
@property (nonatomic , strong) NSMutableArray *titleArray;
@property (nonatomic , strong) NSMutableArray *imageArray;
@end

@implementation SHViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addRoundview];
    [self addMiddleButton];
}

- (void)addRoundview{
    
    UILabel *sh_label = [[UILabel alloc]initWithFrame:CGRectMake(0, 64, kScreen_Width, 44)];
    sh_label.backgroundColor = [UIColor lightGrayColor];
    sh_label.text = @"石虎~恭喜大家转圈圈";
    sh_label.textAlignment = NSTextAlignmentCenter;
    sh_label.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:sh_label];
    
    SHRoundview *sh_roundview = [[SHRoundview alloc]initWithFrame:CGRectMake(0, 0, 400, 400)];
    sh_roundview.backgroundColor = [UIColor colorWithRed:100/255.f green:152/255.f blue:251/255.f alpha:0.7];
    sh_roundview.center = self.view.center;
    self.sh_roundview = sh_roundview;

    //创建 标题和图片数组
    _titleArray =  [NSMutableArray arrayWithObjects:@"首页",@"业务",@"添加",@"管理",@"消息", nil];
    _imageArray = [NSMutableArray arrayWithObjects:@"SHHomeViewController",@"SHBusinessViewController",@"SHIncreaseViewController",@"SHManagementViewController",@"SHMessageViewController", nil];
    
    //
    [sh_roundview BtnType:SH_RoundviewTypeCustom BtnWitch:100 adjustsFontSizesTowidth:YES msaksToBounds:YES conrenrRadius:50 image:_imageArray TitileArray:_titleArray titileColor:[UIColor blackColor]];
    
    //click item push
    __weak SHViewController *weakself = self;
    sh_roundview.back = ^(NSInteger num ,NSString *name ) {
        [weakself pushView:num name:name];
    };
    
    [self.view addSubview:sh_roundview];
}

- (void)addMiddleButton{
    
    //
    _button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    _button.center = self.view.center;
    _button.backgroundColor = [UIColor yellowColor];
    _button.layer.cornerRadius = 50;
    [_button setImage:[UIImage imageNamed:@"SHIncreaseViewController"] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(showItems:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:_button];
}

- (void)showItems:(UIButton *)sender{
    [_sh_roundview show];
}

- (void)pushView:(NSInteger)num name:(NSString *)name {

    Class class = NSClassFromString(_imageArray[num]);
    SHBaseViewController *vc = [[class alloc]init];
    vc.title = name;
    [self.navigationController pushViewController:vc animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
