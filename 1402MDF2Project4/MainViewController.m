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
    
    theaters = [[NSMutableArray alloc] init];
    movies = [[NSMutableArray alloc] init];
    
    // Create Theater Data
    
    TheaterInfo *theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"AMC Altamonte Mall 18"];
    theater.theaterLocation = [NSString stringWithFormat:@"433 E. Altamonte Dr. Altamonte Springs, FL 32701"];
    //theater.theaterImage = [UIImage imageNamed:@"theatername.png"];
    //Add teater to array
    [theaters addObject:theater];
    
    theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"Regal Winter Park Village 20"];
    theater.theaterLocation = [NSString stringWithFormat:@"510 North Orlando Avenue Winter Park, FL 32789"];
    //theater.theaterImage = [UIImage imageNamed:@"theatername.png"];
    //Add teater to array
    [theaters addObject:theater];
    
    theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"Aloma Cinema Grill"];
    theater.theaterLocation = [NSString stringWithFormat:@"2155 Aloma Avenue Winter Park, FL 32792"];
    //theater.theaterImage = [UIImage imageNamed:@"theatername.png"];
    //Add teater to array
    [theaters addObject:theater];
    
    theater = [[TheaterInfo alloc] init];
    theater.theaterTitle = [NSString stringWithFormat:@"Regal Waterford Lakes 20"];
    theater.theaterLocation = [NSString stringWithFormat:@"541 North Alafaya Trail Orlando, FL 32828"];
    //theater.theaterImage = [UIImage imageNamed:@"theatername.png"];
    //Add teater to array
    [theaters addObject:theater];
    
    NSLog(@"Theaters: %@", theaters.description);
    
    
    

    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void) viewDidAppear:(BOOL)animated
{
    [self.tableView reloadData];
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

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    switch (section) {
        case 0:
            return 2;
            break;
        case 1:
            return 2;
            break;
        case 2:
            return 2;
            break;
        case 3:
            return 2;
            break;
            
        default:
            return 0;
            break;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:{
            // Grab the correct theater object per section title
            TheaterInfo *tempTheater = [theaters objectAtIndex:0];
            //Return theater title
            return tempTheater.theaterTitle;
            break;
        }
        case 1:{
            // Grab the correct theater object per section title
            TheaterInfo *tempTheater = [theaters objectAtIndex:1];
            //Return theater title
            return tempTheater.theaterTitle;
            break;
        }
        case 2:{
            // Grab the correct theater object per section title
            TheaterInfo *tempTheater = [theaters objectAtIndex:2];
            //Return theater title
            return tempTheater.theaterTitle;
            break;
        }
        case 3:{
            // Grab the correct theater object per section title
            TheaterInfo *tempTheater = [theaters objectAtIndex:3];
            //Return theater title
            return tempTheater.theaterTitle;
            break;
        }
        default:
            return nil;
            break;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    for (int i=0 ; i<movies.count; i++) {
        NSLog(@"This is movie: %@", [movies objectAtIndex:i]);
        MovieInfo *tempMovie = [movies objectAtIndex:i];
        
        cell.textLabel.text = tempMovie.movieTitle;
        
    }
    
    
    
    
    
    
    
    cell.textLabel.text = @"test";
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

/*
#pragma mark - Navigation

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}

 */

@end
