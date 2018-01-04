//
//  ViewController.m
//  CzwChooseMonth
//
//  Created by iMac-1 on 2018/1/4.
//  Copyright © 2018年 iOS_阿玮. All rights reserved.
//

#import "ViewController.h"
#import "AWNumberSlideView.h"

@interface ViewController ()<AWNumberSlideViewDelegate>

@property(nonatomic,strong) AWNumberSlideView *slideView;

@property (weak, nonatomic) IBOutlet UILabel *lab_month;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.slideView = [[AWNumberSlideView alloc]initWithFrame:CGRectMake(14,
                                                                        250,
                                                                        [UIScreen mainScreen].bounds.size.width-28,
                                                                        50)];
    //设置一个背景色，以便查看范围
    self.slideView.backgroundColor = [UIColor blackColor];
    
    [self.slideView setLableCount:13];
    [self.slideView setSecLevelAlpha:1.0];
    [self.slideView setThirdLevelAlpha:1.0];
    //监控代理
    self.slideView.delegate = self;
    [self.view addSubview:self.slideView];
    
}

-(void)AWSlideViewDidChangeIndex:(int)count
{
    self.lab_month.text = [NSString stringWithFormat:@"当前月份：%d",count+1];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
