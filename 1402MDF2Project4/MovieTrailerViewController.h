//
//  MovieTrailerViewController.h
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MediaPlayer/MediaPlayer.h>
#import "MovieInfo.h"

@interface MovieTrailerViewController : UIViewController
{
    MPMoviePlayerController *moviePlayer;
}

@property (nonatomic) MovieInfo *movie;

@end
