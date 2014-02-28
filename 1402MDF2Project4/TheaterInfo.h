//
//  TheaterInfo.h
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TheaterInfo : NSObject

@property (nonatomic) NSString *theaterTitle;
@property (nonatomic) NSString *theaterLocation;
@property (nonatomic) UIImage *theaterImage;
@property (nonatomic) NSMutableArray *theaterShowings;

@end
