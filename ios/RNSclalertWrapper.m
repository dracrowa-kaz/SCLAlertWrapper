
#import "RNSclalertWrapper.h"
#import "AppDelegate.h"
@import SCLAlertView_Objective_C;
@implementation RNSclalertWrapper

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

-(void)showAlert:(SCLAlertView *)alert
            ctrl:(UIViewController *)ctrl
           title:(NSString *)title
        subTitle:(NSString *)subTitle
            type:(NSString *)type
{
    SWITCH (type) {
        CASE (success) {
            [alert showSuccess:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (error) {
            [alert showError:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (edit) {
            [alert showEdit:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (info){
            [alert showInfo:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (notice){
            [alert showNotice:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (waiting){
            [alert showWaiting:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (warning){
            [alert showWarning:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        CASE (question){
            [alert showQuestion:ctrl title:title subTitle:subTitle closeButtonTitle:nil duration:00.0f];
            break;
        }
        DEFAULT {
            break;
        }
    }
}

RCT_EXPORT_METHOD(showSCLAlertWithThreeButtons:(NSString *)type
                  title:(NSString *)title
                  subTitle:(NSString *)subTitle
                  firstButtonTitle:(NSString *)firstButtonTitle
                  secondButtonTitle:(NSString *)secondButtonTitle
                  thirdButtonTitle:(NSString *)thirdButtonTitle
                  callback:(RCTResponseSenderBlock)callback)
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *ctrl = appDelegate.rnViewController;
    
    
    [alert addButton:firstButtonTitle actionBlock:^(void) {
        callback(@[@0]);
    }];
    [alert addButton:secondButtonTitle actionBlock:^(void) {
        callback(@[@1]);
    }];
    [alert addButton:thirdButtonTitle actionBlock:^(void) {
        callback(@[@2]);
    }];
    [self showAlert: alert ctrl:ctrl title:title subTitle:subTitle type:type];
}

RCT_EXPORT_METHOD(showSCLAlertWithTwoButtons:(NSString *)type
                  title:(NSString *)title
                  subTitle:(NSString *)subTitle
                  firstButtonTitle:(NSString *)firstButtonTitle
                  secondButtonTitle:(NSString *)secondButtonTitle
                  callback:(RCTResponseSenderBlock)callback)
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *ctrl = appDelegate.rnViewController;
    
    
    [alert addButton:firstButtonTitle actionBlock:^(void) {
        callback(@[@0]);
    }];
    [alert addButton:secondButtonTitle actionBlock:^(void) {
        callback(@[@1]);
    }];
    [self showAlert: alert ctrl:ctrl title:title subTitle:subTitle type:type];
}

RCT_EXPORT_METHOD(showSCLAlert:(NSString *)type
                  title:(NSString *)title
                  subTitle:(NSString *)subTitle
                  closeButtonTitle:(NSString *)closeButtonTitle
                  callback:(RCTResponseSenderBlock)callback)
{
    SCLAlertView *alert = [[SCLAlertView alloc] init];
    AppDelegate *appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    UIViewController *ctrl = appDelegate.rnViewController;
    
    [alert addButton:closeButtonTitle actionBlock:^(void) {
        callback(@[@"closed"]);
    }];
    
    [self showAlert: alert ctrl:ctrl title:title subTitle:subTitle type:type];
}

@end
  
