//
//  ImageFilters.h
//  ImageFilters
//
//  Created by Navneet Kumar on 26/02/15.
//  Copyright (c) 2015 Navneet Kumar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ImageFilters : NSObject

@property (nonatomic,readonly) UIImage *originalImage;

- (id)initWithImage:(UIImage *)image;
- (UIImage *)grayScaleImage;
- (UIImage *)oldImageWithIntensity:(CGFloat)level;

@end
