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
    movie.movieTitle = @"3 Days To Kill";
    movie.movieImage = [UIImage imageNamed:@"3DayToKill.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"2:00pm", @"4:45pm", @"7:20pm", @"9:55pm", nil];
    // Obtain path to video
    NSString *filePath = [[NSBundle mainBundle] pathForResource:@"3DaysToKill" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"12 Years A Slave";
    movie.movieImage = [UIImage imageNamed:@"12YearsASlave.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"12:50pm", @"3:40pm", @"6:45pm", @"9:45pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"12YearsASlave" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"About Last Night";
    movie.movieImage = [UIImage imageNamed:@"AboutLastNight.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"11:50am", @"1:15pm", @"3:55pm", @"10:30pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"AboutLastNight" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"American Hustle";
    movie.movieImage = [UIImage imageNamed:@"AmericanHustle.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"10:30am", @"12:10pm", @"2:50pm", @"5:30pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"AmericanHustle" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Endless Love";
    movie.movieImage = [UIImage imageNamed:@"EndlessLove.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"10:55am", @"1:35pm", @"7:30pm", @"10:15pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"EndlessLove" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Frozen";
    movie.movieImage = [UIImage imageNamed:@"Frozen.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"11:00am", @"1:50pm", @"4:40pm", @"5:25pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"Frozen" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"The Lego Movie";
    movie.movieImage = [UIImage imageNamed:@"TheLegoMovie.png"];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:10pm", @"3:50pm", @"4:40pm", @"7:20pm", nil];
    // Obtain path to video
    filePath = [[NSBundle mainBundle] pathForResource:@"TheLegoMovie" ofType:@"mp4"];
    movie.movieTrailerURL = [NSURL fileURLWithPath:filePath];
    
    [movies addObject:movie];
    
    
    movie = [[MovieInfo alloc] init];
    movie.movieTitle = @"Muppets Most Wanted";
    // Capture image as data object
    NSData *imageData = [[NSData alloc] initWithContentsOfURL:[NSURL URLWithString:@"http://trailers.apple.com/trailers/disney/muppetsmostwanted/images/poster.jpg"]];
    // Convert Data object to UIImage
    movie.movieImage = [UIImage imageWithData:imageData];
    movie.movieShowTimes = [[NSMutableArray alloc] initWithObjects:@"1:10pm", @"3:50pm", @"4:40pm", @"7:20pm", nil];
    // Obtain path to video
    movie.movieTrailerURL = [NSURL URLWithString:@"http://movietrailers.apple.com/movies/disney/muppetsmostwanted/muppetsmostwanted-tlr2_720p.mov"];

    
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

/*
 // Override to support conditional editing of the table view.
 - (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the specified item to be editable.
 return YES;
 }
 */

/*
 // Override to support editing the table view.
 - (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
 {
 if (editingStyle == UITableViewCellEditingStyleDelete) {
 // Delete the row from the data source
 [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
 }
 else if (editingStyle == UITableViewCellEditingStyleInsert) {
 // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
 }
 }
 */

/*
 // Override to support rearranging the table view.
 - (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
 {
 }
 */

/*
 // Override to support conditional rearranging of the table view.
 - (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
 {
 // Return NO if you do not want the item to be re-orderable.
 return YES;
 }
 */

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
