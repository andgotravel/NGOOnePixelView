//
//  NGOOnePixelView.m
//  Pods
//
//  Created by Stanislav Zhukovskiy on 29.12.15.
//
//

#import "NGOOnePixelView.h"

@implementation NGOOnePixelView

- (void)layoutSubviews {
    [super layoutSubviews];
    
}

- (void)setupViewWithConstraintType:(NGOOnePixelViewConstraintType)type {
    switch (type) {
        case NGOOnePixelViewConstraintTypeHeight: [self addHeigthContraint]; break;
        case NGOOnePixelViewConstraintTypeWidth: [self addWidthContraint]; break;
        case NGOOnePixelViewConstraintTypeBoth: {
            [self addHeigthContraint];
            [self addWidthContraint];
        } break;
    }
    [self layoutIfNeeded];
}

- (void)addHeigthContraint {
    NSArray *constraints = [self constraints];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"firstAttribute = %d", NSLayoutAttributeHeight];
    NSArray *filteredArray = [constraints filteredArrayUsingPredicate:predicate];
    if (filteredArray.count > 0) {
        for (NSLayoutConstraint *c in filteredArray) {
            [self removeConstraint:c];
        }
    }
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeHeight relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:1 / [[UIScreen mainScreen] scale]];
    [self addConstraint:heightConstraint];
}

- (void)addWidthContraint {
    NSArray *constraints = [self constraints];
    NSPredicate *predicate = [NSPredicate predicateWithFormat:@"firstAttribute = %d", NSLayoutAttributeWidth];
    NSArray *filteredArray = [constraints filteredArrayUsingPredicate:predicate];
    if (filteredArray.count > 0) {
        for (NSLayoutConstraint *c in filteredArray) {
            [self removeConstraint:c];
        }
    }
    
    NSLayoutConstraint *heightConstraint = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeWidth relatedBy:NSLayoutRelationEqual toItem:nil attribute:NSLayoutAttributeNotAnAttribute multiplier:1 constant:1 / [[UIScreen mainScreen] scale]];
    [self addConstraint:heightConstraint];
}

@end
