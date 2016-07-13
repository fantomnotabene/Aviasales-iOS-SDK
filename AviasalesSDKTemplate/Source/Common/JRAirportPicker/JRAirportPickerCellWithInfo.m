//
//  JRAirportPickerCellWithInformation.m
//  ; iOS Apps
//
//  Created by Ruslan Shevchuk on 30/01/14.
//
//

#import "JRAirportPickerCellWithInfo.h"

#define kJRAirportPickerCellWithInfoDisabledActivityIndicatorHorizontalSpace 20
#define kJRAirportPickerCellWithInfoEnabledActivityIndicatorHorizontalSpace 48

@interface JRAirportPickerCellWithInfo ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *labelHorizontConstaint;
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicatorView;
@end

@implementation JRAirportPickerCellWithInfo


- (void)startActivityIndicator {
    [_activityIndicatorView setHidden:NO];
    [_activityIndicatorView startAnimating];
    [_labelHorizontConstaint setConstant:kJRAirportPickerCellWithInfoEnabledActivityIndicatorHorizontalSpace];
}

- (void)stopActivityIndicator {
    [_activityIndicatorView setHidden:YES];
    [_activityIndicatorView stopAnimating];
    [_labelHorizontConstaint setConstant:kJRAirportPickerCellWithInfoDisabledActivityIndicatorHorizontalSpace];
}

@end
