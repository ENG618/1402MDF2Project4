//
//  MovieInfo.h
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MovieInfo : NSObject

@property (nonatomic) NSString *movieTitle;
@property (nonatomic) UIImage *movieImage;
@property (nonatomic) NSURL *movieTrailerURL;
@property (nonatomic) NSMutableArray *movieShowTimes;

@end
