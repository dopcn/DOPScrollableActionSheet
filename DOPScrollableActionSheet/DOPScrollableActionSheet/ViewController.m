//
//  ViewController.m
//  DOPScrollableActionSheet
//
//  Created by weizhou on 12/27/14.
//  Copyright (c) 2014 fengweizhou. All rights reserved.
//

#import "ViewController.h"
#import "DOPScrollableActionSheet.h"

@interface ViewController () <UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BOOL isIPhone = [[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone;
    self.title = isIPhone?@"DOPScrollableActionSheet on iPhone":@"DOPScrollableActionSheet on iPad";
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - table view delegate 
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    DOPAction *action1 = [[DOPAction alloc] initWithName:@"Wechat" iconName:@"weixin" handler:^{
        //
    }];
    DOPAction *action2 = [[DOPAction alloc] initWithName:@"QQ" iconName:@"qq" handler:^{
        //
    }];
    DOPAction *action3 = [[DOPAction alloc] initWithName:@"WxFriends" iconName:@"wxFriends" handler:^{
        //
    }];
    DOPAction *action4 = [[DOPAction alloc] initWithName:@"Qzone" iconName:@"qzone" handler:^{
        //
    }];
    DOPAction *action5 = [[DOPAction alloc] initWithName:@"Weibo" iconName:@"weibo" handler:^{
        //
    }];
    DOPAction *action6 = [[DOPAction alloc] initWithName:@"Twitter" iconName:@"twitter" handler:^{
        //
    }];
    DOPAction *action7 = [[DOPAction alloc] initWithName:@"Facebook" iconName:@"fb" handler:^{
        //
    }];
    DOPAction *action8 = [[DOPAction alloc] initWithName:@"G+" iconName:@"g+" handler:^{
        //
    }];
    DOPAction *action9 = [[DOPAction alloc] initWithName:@"Pin" iconName:@"pin" handler:^{
        //
    }];
    DOPAction *action10 = [[DOPAction alloc] initWithName:@"Whatsapp" iconName:@"whatsapp" handler:^{
        //
    }];
    DOPAction *action11 = [[DOPAction alloc] initWithName:@"Line" iconName:@"line" handler:^{
        //
    }];
    DOPAction *action12 = [[DOPAction alloc] initWithName:@"SMS" iconName:@"sms" handler:^{
        //
    }];
    DOPAction *action13 = [[DOPAction alloc] initWithName:@"Email" iconName:@"email" handler:^{
        //
    }];
    DOPAction *action14 = [[DOPAction alloc] initWithName:@"Print" iconName:@"print" handler:^{
        //
    }];
    DOPAction *action15 = [[DOPAction alloc] initWithName:@"Copy" iconName:@"copy" handler:^{
        //
    }];
    
    NSArray *actions;
    
    switch (indexPath.row) {
        case 0:{
            actions = @[@"", @[action1, action2, action3, action4, action5]];
        } break;
        case 1:{
            actions = @[@"Share", @[action1, action2, action3, action4, action5]];
        } break;
        case 2:{
            actions = @[@"Share",
                        @[action1, action2, action3, action4, action5],
                        @"",
                        @[action6, action7, action8, action9, action10, action11]];
        } break;
        case 3:{
            actions = @[@"Share",
                        @[action1, action2, action3, action4, action5],
                        @"Share More",
                        @[action6, action7, action8, action9, action10, action11],
                        @"",
                        @[action12, action13, action14, action15]];
        } break;
        default:
            break;
    }
    
    DOPScrollableActionSheet *as = [[DOPScrollableActionSheet alloc] initWithActionArray:actions];
    [as show];
}

@end
