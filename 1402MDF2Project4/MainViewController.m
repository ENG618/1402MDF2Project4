//
//  MainViewController.m
//  1402MDF2Project4
//
//  Created by Eric Garcia on 2/25/14.
//  Copyright (c) 2014 Full Sail. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    movies = [[NSMutableArray alloc] init];
    theaters = [[NSMutableArray alloc] init];
    
    // Create Movie Data
    
    MovieInfo *movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Non-Stop";
    // Capture image as data object
    NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/universal/nonstop/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:10pm", @"3:50pm", @"4:40pm", @"7:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/universal/nonstop/nonstop-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"3 Days to Kill";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/independent/3daystokill/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"2:10pm", @"3:30pm", @"5:40pm", @"8:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/independent/3daystokill/3daystokill-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Pompeli";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/sony_pictures/pompeii/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"11:10am", @"4:50pm", @"6:10pm", @"6:40pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/sony_pictures/pompeii/pompeii-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"About Last Night";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/sony_pictures/aboutlastnight/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"11:30am", @"3:25pm", @"5:10pm", @"10:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/sony_pictures/aboutlastnight/aboutlastnight-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Endless Love";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/universal/endlesslove/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:45pm", @"3:10pm", @"5:45pm", @"9:10pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/universal/endlesslove/endlesslove-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Winter's Tale";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/wb/winterstale/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:45pm", @"2:20pm", @"4:00pm", @"10:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/wb/winterstale/winterstale-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Robocop";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/sony_pictures/robocop/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:20pm", @"2:50pm", @"5:30pm", @"7:45pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/sony_pictures/robocop/robocop-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"The LEGO Movie";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/wb/thelegomovie/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:05pm", @"2:30pm", @"4:10pm", @"9:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/wb/thelegomovie/lego-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"The Monuments Men";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/sony_pictures/themonumentsmen/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"10:10am", @"12:50pm", @"3:20pm", @"5:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/sony_pictures/monumentsmen/monumentsmen-tlr2_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"That Awkward Moment";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/focus_features/thatawkwardmoment/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:50pm", @"2:50pm", @"4:50pm", @"7:50pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/independent/thatawkwardmoment/thatakwardmoment-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Ride Along";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/universal/ridealong/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:10pm", @"3:30pm", @"4:40pm", @"5:50pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/universal/ridealong/ridealong-tsr_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"The Nut Job";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/independent/thenutjob/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"11:10am", @"2:25pm", @"4:20pm", @"10:30pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/independent/thenutjob/thenutjob-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Lone Survivor";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/universal/lonesurvivor/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:15pm", @"2:50pm", @"5:40pm", @"8:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/universal/lonesurvivor/lonesurvivor-tlr_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Jack Ryan: Shadow Recruit";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/paramount/jackryanshadowrecruit/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:35pm", @"3:40pm", @"5:40pm", @"6:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/paramount/jackryanshadowrecruit/jackryanshadowrecruit-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"The Wolf of Wall Street";
    // Capture image as data object
    imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com//trailers/paramount/thewolfofwallstreet/images/poster-large.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"10:10am", @"12:50pm", @"2:40pm", @"3:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/paramount/wolfofwallstreet/wolfofwallstreet-tlr1_720p.mov"];
    // Add object to movies array
    [movies addObject:movie];
    
    
    
    // Create Theater Data
    
    TheaterInfo *theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"AMC Altamonte Mall 18"];
    theater.theaterLocation = [NSString stringWithFormat:@"433 E. Altamonte Dr. Altamonte Springs, FL 32701"];
    theater.theaterImage = [UIImage imageNamed:@"AMCAM18.png"];
    theater.theaterShowings = movies;
    //Add teater to array
    [theaters addObject:theater];
    
    theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"Regal Winter Park Village 20"];
    theater.theaterLocation = [NSString stringWithFormat:@"510 North Orlando Avenue Winter Park, FL 32789"];
    theater.theaterImage = [UIImage imageNamed:@"RWPV20"];
    theater.theaterShowings = movies;
    //Add teater to array
    [theaters addObject:theater];
    
    theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"Aloma Cinema Grill"];
    theater.theaterLocation = [NSString stringWithFormat:@"2155 Aloma Avenue Winter Park, FL 32792"];
    theater.theaterImage = [UIImage imageNamed:@"ACG"];
    theater.theaterShowings = movies;
    //Add teater to array
    [theaters addObject:theater];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return [theaters count];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 75.0f;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    // Creat header label
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(50.0f, 50.0f, tableView.frame.size.width, 100.0f)];
    if (headerLabel != nil) {
        
        switch (section) {
            case 0:{
                // Set background color
                headerLabel.backgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.75f];
                // Grab the correct theater object per section title
                TheaterInfo *tempTheater = [theaters objectAtIndex:0];
                // Create imageView
                UIImageView *ti = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
                // Set image
                ti.image = tempTheater.theaterImage;
                // Add image to view
                [headerLabel addSubview:ti];
                // Create title lable
                UILabel *theaterTitle = [[UILabel alloc] initWithFrame:CGRectMake(85, 5, 225, 25)];
                theaterTitle.text = [NSString stringWithFormat:@"%@", tempTheater.theaterTitle];
                theaterTitle.textColor = [UIColor whiteColor];
                // Add title to view
                [headerLabel addSubview:theaterTitle];
                // Creat address lable
                UILabel *theaterAddress = [[UILabel alloc]initWithFrame:CGRectMake(85, 35, 225, 25)];
                theaterAddress.text = tempTheater.theaterLocation;
                theaterAddress.textColor = [UIColor whiteColor];
                theaterAddress.adjustsFontSizeToFitWidth = YES;
                // Add address to view
                [headerLabel addSubview:theaterAddress];
                
                //Return theater title
                return headerLabel;
                break;
            }
            case 1:{
                // Set background color
                headerLabel.backgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.75f];
                // Grab the correct theater object per section title
                TheaterInfo *tempTheater = [theaters objectAtIndex:1];
                // Create imageView
                UIImageView *ti = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
                // Set image
                ti.image = tempTheater.theaterImage;
                // Add image to view
                [headerLabel addSubview:ti];
                // Create title lable
                UILabel *theaterTitle = [[UILabel alloc] initWithFrame:CGRectMake(85, 5, 225, 25)];
                theaterTitle.text = [NSString stringWithFormat:@"%@", tempTheater.theaterTitle];
                theaterTitle.textColor = [UIColor whiteColor];
                // Add title to view
                [headerLabel addSubview:theaterTitle];
                // Creat address lable
                UILabel *theaterAddress = [[UILabel alloc]initWithFrame:CGRectMake(85, 35, 225, 25)];
                theaterAddress.text = tempTheater.theaterLocation;
                theaterAddress.textColor = [UIColor whiteColor];
                theaterAddress.adjustsFontSizeToFitWidth = YES;
                // Add address to view
                [headerLabel addSubview:theaterAddress];
                
                //Return theater title
                return headerLabel;
                break;
            }
            case 2:{
                // Set background color
                headerLabel.backgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.75f];
                // Grab the correct theater object per section title
                TheaterInfo *tempTheater = [theaters objectAtIndex:2];
                // Create imageView
                UIImageView *ti = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
                // Set image
                ti.image = tempTheater.theaterImage;
                // Add image to view
                [headerLabel addSubview:ti];
                // Create title lable
                UILabel *theaterTitle = [[UILabel alloc] initWithFrame:CGRectMake(85, 5, 225, 25)];
                theaterTitle.text = [NSString stringWithFormat:@"%@", tempTheater.theaterTitle];
                theaterTitle.textColor = [UIColor whiteColor];
                // Add title to view
                [headerLabel addSubview:theaterTitle];
                // Creat address lable
                UILabel *theaterAddress = [[UILabel alloc]initWithFrame:CGRectMake(85, 35, 225, 25)];
                theaterAddress.text = tempTheater.theaterLocation;
                theaterAddress.textColor = [UIColor whiteColor];
                theaterAddress.adjustsFontSizeToFitWidth = YES;
                // Add address to view
                [headerLabel addSubview:theaterAddress];
                
                //Return theater title
                return headerLabel;
                break;
            }
            case 3:{
                // Set background color
                headerLabel.backgroundColor = [[UIColor darkGrayColor] colorWithAlphaComponent:0.75f];
                // Grab the correct theater object per section title
                TheaterInfo *tempTheater = [theaters objectAtIndex:3];
                // Create imageView
                UIImageView *ti = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 75, 75)];
                // Set image
                ti.image = tempTheater.theaterImage;
                // Add image to view
                [headerLabel addSubview:ti];
                // Create title lable
                UILabel *theaterTitle = [[UILabel alloc] initWithFrame:CGRectMake(85, 5, 225, 25)];
                theaterTitle.text = [NSString stringWithFormat:@"%@", tempTheater.theaterTitle];
                theaterTitle.textColor = [UIColor whiteColor];
                // Add title to view
                [headerLabel addSubview:theaterTitle];
                // Creat address lable
                UILabel *theaterAddress = [[UILabel alloc]initWithFrame:CGRectMake(85, 35, 225, 25)];
                theaterAddress.text = tempTheater.theaterLocation;
                theaterAddress.textColor = [UIColor whiteColor];
                theaterAddress.adjustsFontSizeToFitWidth = YES;
                // Add address to view
                [headerLabel addSubview:theaterAddress];
                
                //Return theater title
                return headerLabel;
                break;
            }
            default:
                return nil;
                break;
        }
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    switch (section) {
        case 0:
            return [[[theaters objectAtIndex:0] theaterShowings] count];
            break;
        case 1:
            return [[[theaters objectAtIndex:1] theaterShowings] count];
            break;
        case 2:
            return [[[theaters objectAtIndex:2] theaterShowings] count];
            break;
        case 3:
            return [[[theaters objectAtIndex:3] theaterShowings] count];
            break;
            
        default:
            return 0;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    MovieInfo *tempMovie = [movies objectAtIndex:indexPath.row];
    cell.textLabel.text = tempMovie.movieTitle;
    NSMutableString *showTimes = [[NSMutableString alloc] init];
    
    for (int i = 0; i < tempMovie.movieShowTimes.count; i++) {
        NSString *tempString = [tempMovie.movieShowTimes objectAtIndex:i];
        [showTimes appendString:[NSString stringWithFormat: @"%@ ", tempString]];
    }
    
    
    cell.detailTextLabel.text = showTimes;
    cell.imageView.image = tempMovie.movieImage;
    
    return cell;
}

 #pragma mark - Navigation
 
 // In a story board-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
 {
 // Get the new view controller using [segue destinationViewController].
     MovieDetailsViewController *mdvc = [segue destinationViewController];
 // Pass the selected object to the new view controller.
     NSIndexPath *path = [self.tableView indexPathForSelectedRow];
     mdvc.movie = [movies objectAtIndex:path.row];
 }
 

@end
