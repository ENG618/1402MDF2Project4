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
@synthesize movieView, movieTitleLabel;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPlay:(id)sender
{
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"http://trailers.apple.com/movies/independent/10mountains10years/10mountains10years-tlr1_h720p.mov" ofType:@"mov"];
    
    NSURL *fileURL = [NSURL fileURLWithPath:filePath];
    
    moviePlayer = [[MPMoviePlayerController alloc] initWithContentURL:fileURL];
    if (moviePlayer) {
        [self.view addSubview:moviePlayer.view];
        
        moviePlayer.view.frame = movieView.frame;
        
        moviePlayer.fullscreen = NO;
        moviePlayer.controlStyle = MPMovieControlStyleNone;
        
        [moviePlayer play];
    }
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
    }
}

@end
