//
//  UIScreen+QIMIpad.m
//  qunarChatIphone
//
//  Created by 平 薛 on 15/6/16.
//
//

#import "UIScreen+QIMIpad.h"

@implementation UIScreen(QIMIpad)

- (CGFloat)qim_dockWidth{
    if ([UIScreen mainScreen].width * 0.06 < 80) {
        return 80;
    }
    return [UIScreen mainScreen].width * 0.06;
}

- (CGFloat)qim_leftWidth{
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPad"]) {
        //iPad
        if ([UIScreen mainScreen].width * 0.21 < 295) {
            return 295;
        }
        return [UIScreen mainScreen].width * 0.21;
    } else {
        return [UIScreen mainScreen].bounds.size.width;
    }
}

- (CGFloat)qim_rightWidth{
    NSString *deviceType = [UIDevice currentDevice].model;
    
    if([deviceType isEqualToString:@"iPad"]) {
        //iPad
        UIView *view = [[[UIApplication sharedApplication].keyWindow.rootViewController.childViewControllers lastObject] view];
        return CGRectGetWidth(view.frame);
    } else {
        return [UIScreen mainScreen].bounds.size.width;
    }
}

- (CGFloat)height{
    return self.bounds.size.height;
}

- (CGFloat)width{
    return self.bounds.size.width;
}
@end
