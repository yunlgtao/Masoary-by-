//
//  Example2Contraller.m
//  Masoary学习by吴彦祖
//
//  Created by yunlg on 16/3/29.
//  Copyright © 2016年 陶云龙Mac. All rights reserved.
//

#import "Example2Contraller.h"
#import <Masonry/Masonry.h>
@interface Example2Contraller ()

@end

@implementation Example2Contraller

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.edgesForExtendedLayout = UIRectEdgeNone ;
    
    
    UIView *v1 =({
        UIView *view = [UIView new];
        [self.view addSubview:view];
        [view mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.left.right.equalTo(self.view);
            make.height.equalTo(view.mas_width).multipliedBy(9.0f/16.0f);
        }];
        view.backgroundColor =[UIColor blackColor];
        
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
