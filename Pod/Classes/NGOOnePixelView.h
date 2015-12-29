//
//  NGOOnePixelView.h
//  Pods
//
//  Created by Stanislav Zhukovskiy on 29.12.15.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(int, NGOOnePixelViewConstraintType) {
    NGOOnePixelViewConstraintTypeHeight = 0,
    NGOOnePixelViewConstraintTypeWidth,
    NGOOnePixelViewConstraintTypeBoth
};

@interface NGOOnePixelView : UIView

@property (nonatomic) NGOOnePixelViewConstraintType type;

@end
