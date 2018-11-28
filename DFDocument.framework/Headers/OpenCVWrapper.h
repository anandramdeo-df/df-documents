//
//  OpenCVWrapper.h
//  CamScanner
//
//  Created by Ranosys_Technologies on 16/05/17.
//  Copyright © 2017 Ranosys_Technologies. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface OpenCVWrapper : NSObject
+(NSMutableArray *) getLargestSquarePoints: (UIImage *) image : (CGSize) size;
+(UIImage *) getTransformedImage: (CGFloat) newWidth : (CGFloat) newHeight : (UIImage *) origImage : (CGPoint [4]) corners : (CGSize) size;
@end
