DOPScrollableActionSheet
========================

Multi-row scrollable action sheet

tested on 

1. iPad Air 7.1 8.1
2. iPhone5s 7.1 8.1


on iPad

![image](https://github.com/dopcn/DOPScrollableActionSheet/blob/master/images/sample_ipad.gif)

on iPhone
![image](https://github.com/dopcn/DOPScrollableActionSheet/blob/master/images/sample_iphone.gif)

```objc
//DOPAction                 model
//DOPScrollableActionSheet  view and partial controller for showing and programmatical dismissing

//multi scrollable row actionsheet
@interface DOPScrollableActionSheet : UIView
/*
    actions = @[@"row title one",                   //with title
                @[action1, action2, action3, ...],
                @"row title two",                   //with title
                @[action4, action5],
                @"",                                //without title
                @[action6, action7],
                ...];
*/
- (instancetype)initWithActionArray:(NSArray *)actions;

//always show in a new window
- (void)show;
- (void)dismiss;
@end

#pragma mark - DOPAction interface
@interface DOPAction : NSObject

@property (nonatomic, copy) NSString *iconName;
@property (nonatomic, copy) NSString *actionName;
@property (nonatomic, copy) void(^handler)(void);

- (instancetype)initWithName:(NSString *)name
                    iconName:(NSString *)iconName
                     handler:(void(^)(void))handler;

@end
```

all the icons come from [mob.com](http:mob.com)