//
//  MainViewController.h
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MovieInfo.h"
#import "TheaterInfo.h"
#import "MovieDetailsViewController.h"

@interface MainViewController : UITableViewController
{
    NSMutableArray *movies;
    NSMutableArray *theaters;
}

@end
