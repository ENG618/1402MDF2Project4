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
    
}

- (IBAction)onStop:(id)sender
{
    
}

- (IBAction)onFullscreen:(id)sender
{
    
}

@end
