//
//  MovieTrailerViewController.m
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "MovieTrailerViewController.h"

@interface MovieTrailerViewController ()
@property (strong, nonatomic) IBOutlet UILabel *movieTitleLabel;
@property (strong, nonatomic) IBOutlet UIView *movieView;

@end

@implementation MovieTrailerViewController
@synthesize movieView, movieTitleLabel, movie;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:[movie movieTrailerURL]];
    if (moviePlayer) {
        [self.view addSubview:moviePlayer.view];
        
        moviePlayer.view.frame = movieView.frame;
        
        moviePlayer.fullscreen = NO;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPlay:(id)sender
{
    [moviePlayer play];
}

- (IBAction)onStop:(id)sender
{
    if (moviePlayer != nil) {
        [moviePlayer stop];
    }
}

- (IBAction)onFullscreen:(id)sender
{
    if (moviePlayer != nil) {
        moviePlayer.fullscreen = YES;
        moviePlayer.controlStyle = MPMovieControlStyleFullscreen;
    }
}

@end
