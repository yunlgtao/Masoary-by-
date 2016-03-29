//
//  Example1Contraller.m
//  Masoary学习by吴彦祖
//
//  Created by yunlg on 16/3/28.
//  Copyright © 2016年 陶云龙Mac. All rights reserved.
//

#import "Example1Contraller.h"

@interface Example1Contraller ()

@end

@implementation Example1Contraller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //屏幕掉试图top 约束重最顶端开始计算，这样的话为重导航条以下
    self.edgesForExtendedLayout = UIRectEdgeNone;
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *V1 = ({
        UIView *view= [UIView new];
        [self.view addSubview:view];
        view.backgroundColor = [UIColor redColor];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            //把一个高宽都为50的view，放到屏幕的左上角，这样的写的话view 会被导航条盖住，这样的话需要把top的指向变下
            //具体为啥看截图
            make.top.left.equalTo(self.view);
           // make.left.equalTo(self.view);
            //这样设置是一种方法，但是也可以把它屏蔽掉,看上方法 self.edgesForExtendedLayout = UIRectEdgeNone;

           // make.top.equalTo(self.mas_topLayoutGuide);
            
        }];
        
        view;
    
    });
    
    UIView *v2 = ({
        UIView *view = [UIView new];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.mas_equalTo(CGSizeMake(50, 50));
            make.left.equalTo(V1.mas_right);
            make.top.equalTo(V1.mas_bottom);
        }];
        view.backgroundColor = [UIColor grayColor];
        //给view加一圈margins
        view.layoutMargins = UIEdgeInsetsMake(-20, -20, -20, -20);
        view;
    
    });
    
    UIView *v3 = ({
        UIView *view = [UIView new];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.size.equalTo(v2);
            make.centerY.equalTo(v2.mas_centerY);
            //view左边以v2的rightMargin为边沿
            make.left.equalTo(v2.mas_rightMargin);
        }];
        view.backgroundColor = [UIColor blackColor];
        view;
    
    });
    
    
    
    
    
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

@end
