//
//  CalculateSizeForString.h
//  AppMSA
//
//  Created by joanahenriques on 01/07/15.
//  Copyright (c) 2015 joanahenriques. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface CalculateSizeForString : NSObject

+(CGSize)sizeForString:(NSString *)stringValue withFont:(UIFont*)font andSize:(CGSize) size;

@end