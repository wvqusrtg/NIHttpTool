//
//  ViewController.m
//  Example02
//
//  Created by nixs on 2020/9/1.
//  Copyright © 2020 nixs. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
//#import "NIHttpTool.framework/Headers/NIHttpTool.h"

static NSString *const JUHE_URL = @"https://api.apiopen.top/getJoke";
static NSString *const JUHE_URL_GET = @"https://api.apiopen.top/getJoke?page=1&count=2&type=video";

@interface ViewController ()
@property(nonatomic,copy) NSDictionary *dicPram;
@property(nonatomic,strong) UILabel *label;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //[self get_JUHE_Data];
    //[self.view addSubview:self.label];
}
/// get/post测试
-(void)get_JUHE_Data{

//    [NIHttpTool postWithURL:JUHE_URL params:self.dicPram success:^(id json) {
//        NSLog(@"---success:%@",json);
//        NSLog(@"---success「mj_JSONString」:%@",[json mj_JSONString]);
//        self.label.text = [json mj_JSONString];
//    } failure:^(NSError *error) {
//        NSLog(@"---error:%@",error);
//    }];
    
//    [NIHttpTool getWithURL:JUHE_URL_GET params:nil success:^(id json) {
//        NSLog(@"---success:%@",json);
//    } failure:^(NSError *error) {
//         NSLog(@"---error:%@",error);
//    }];
}

/// 懒加载
-(NSDictionary *)dicPram{
    if (!_dicPram) {
        _dicPram = @{@"page":@"1",@"count":@"10",@"type":@"video"};
    }
    return _dicPram;
}
-(UILabel *)label{
    if (!_label) {
        _label = [[UILabel alloc] initWithFrame:CGRectMake(0, 44, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height-100)];
        _label.numberOfLines = 0;
        _label.font = [UIFont systemFontOfSize:12];
    }
    return _label;
}

@end
