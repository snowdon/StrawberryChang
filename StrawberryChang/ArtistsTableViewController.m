//
//  ArtistsTableViewController.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ArtistsTableViewController.h"
#import "ArtistDetailViewController.h"
#import "StrawberryChangAppDelegate.h"


@implementation ArtistsTableViewController
@synthesize artistsArray;
@synthesize artistDetailViewController;
@synthesize names;
@synthesize keys;

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
    [artistDetailViewController release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = NSLocalizedString(@"艺人", @"Artists Info");
    
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"artistlist"
                                                    ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.names = dict;
    [dict release];
    
    NSArray *array = [[names allKeys] sortedArrayUsingSelector:
                      @selector(compare:)];
    self.keys = array;

    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
 
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
   // return 1;
    return [keys count];
   // return [self.artistData count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    return [nameSection count];

}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    
    static NSString *SectionsTableIdentifier = @"SectionsTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SectionsTableIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleDefault
                 reuseIdentifier:SectionsTableIdentifier] autorelease];
        
    }
    
    
    //cell.textLabel.text = [nameSection objectAtIndex:row];
    cell.textLabel.text = [[nameSection objectAtIndex:row] objectForKey:@"name"];
    UIImage *avator = [UIImage imageNamed:[[nameSection objectAtIndex:row] objectForKey:@"avator"]];
    cell.imageView.image = avator;
  //  cell.detailTextLabel.text = [[nameSection objectAtIndex:row] objectForKey:@"bio"];

    //[[self.coloursArray objectAtIndex:indexPath.row] valueForKey:@"Colour"];
  //  cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
    
}


/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
//    NSUInteger row = [indexPath row];
    
    //cell.text = [self.artistsArray objectAtIndex:row];
    //cell.textLabel.text = [[[artistData objectAtIndex: indexPath.section] objectForKey: @"title"] objectAtIndex: indexPath.row];
 //   cell.textLabel.text = [[self.artistData objectAtIndex:indexPath.row] objectForKey:@"title"];

    NSUInteger row = [indexPath row];
  //  cell.textLabel.text = [self.artistsArray objectAtIndex:row];
    
    cell.textLabel.text = [self.artistsModel getArtistNameAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

 */

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
        [tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationFade];
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

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Navigation logic may go here. Create and push another view controller.
    /*
     <#DetailViewController#> *detailViewController = [[<#DetailViewController#> alloc] initWithNibName:@"<#Nib name#>" bundle:nil];
     // ...
     // Pass the selected object to the new view controller.
     [self.navigationController pushViewController:detailViewController animated:YES];
     [detailViewController release];
     */
  //  NSInteger row = [indexPath row];
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    


    if (self.artistDetailViewController == nil)
    {
        ArtistDetailViewController *aArtistDetail = [[ArtistDetailViewController alloc] initWithNibName:@"ArtistDetailViewController" bundle:nil];
        
        self.artistDetailViewController = aArtistDetail;
      
        [aArtistDetail release];
        
    }
    
  //  artistDetailViewController.title = [NSString stringWithFormat:@"%@",[self.artistsArray objectAtIndex:row]] ;
    
  //  artistDetailViewController.artistDict = [self.artistData objectAtIndex:indexPath.row];
   // artistDetailViewController.title = [NSString stringWithFormat:@"%@",[artistsArray objectAtIndex:row]];
 //   artistDetailViewController.title = [NSString stringWithFormat:@"%@", [self.artistsModel getArtistNameAtIndex:row ]];
  //  [artistDetailViewController setIndexForArtistBio:row];
    
    artistDetailViewController.title = [NSString stringWithFormat:@"%@",[[nameSection objectAtIndex:row] objectForKey:@"name"]];
    
    artistDetailViewController.artistDict = [nameSection objectAtIndex:row];
    
    StrawberryChangAppDelegate *delegate =[[UIApplication sharedApplication] delegate];
    [delegate.artistsNavViewController pushViewController:artistDetailViewController animated:YES];
    
}

- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *key = [keys objectAtIndex:section];
    return key;
}



- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return keys;
}

//set cell height

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //view size
    
    CGRect mframe = self.view.frame;
    
    return mframe.size.height / 5 ;
    
    //return 62.0;
    
}

@end
