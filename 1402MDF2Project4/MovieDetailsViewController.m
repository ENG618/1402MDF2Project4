//
//  MovieDetailsViewController.m
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "MovieDetailsViewController.h"

@interface MovieDetailsViewController ()
@property (strong, nonatomic) IBOutlet UILabel *title;
@property (strong, nonatomic) IBOutlet UIImageView *mImage;
@property (strong, nonatomic) IBOutlet UILabel *mShowTimes;

@end

@implementation MovieDetailsViewController
@synthesize movie, title, mImage, mShowTimes;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    title.text = movie.movieTitle;
    mImage.image = movie.movieImage;
    
    NSMutableString *showTimes = [[NSMutableString alloc] init];
    for (int i = 0; i < movie.movieShowTimes.count; i++) {
        NSString *tempString = [movie.movieShowTimes objectAtIndex:i];
        [showTimes appendString:[NSString stringWithFormat: @"%@ ", tempString]];
    }
    
    mShowTimes.text = showTimes;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onClick:(id)sender
{
    
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    MovieTrailerViewController  *mtvc = [segue destinationViewController];
    // Pass the selected object to the new view controller.
    mtvc.movie = movie;
}

@end
