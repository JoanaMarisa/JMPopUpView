//
//  CalculateSizeForString.m
//  AppMSA
//
//  Created by joanahenriques on 01/07/15.
//  Copyright (c) 2015 joanahenriques. All rights reserved.
//

#import "CalculateSizeForString.h"

@interface CalculateSizeForString()


@end

@implementation CalculateSizeForString

/*
 * Method for calculating Size - String
 *
 */

+(CGSize)sizeForString:(NSString *)stringValue withFont:(UIFont*)font andSize:(CGSize) size{
   
    CGSize constraint = CGSizeMake(size.width,9999);
    
    NSDictionary *attributes = @{NSFontAttributeName: font};
    CGRect rect = [stringValue boundingRectWithSize:constraint
                                            options:(NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading)
                                         attributes:attributes
                                            context:nil];
    
    
    return rect.size;
    
}

@end



