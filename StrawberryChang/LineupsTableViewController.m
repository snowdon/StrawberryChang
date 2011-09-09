//
//  LineupsTableViewController.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "LineupsTableViewController.h"
#import "LineupDetailViewController.h"
#import "StrawberryChangAppDelegate.h"

@implementation LineupsTableViewController
@synthesize lineupsArray;
@synthesize lineupDetailViewController;
@synthesize keys;
@synthesize names;

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
    [lineupDetailViewController release];
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
    
    self.title = NSLocalizedString(@"Line Up", @"Line up Info");
    
    NSMutableArray *array = [[NSArray alloc] initWithObjects:@"Chuns", @"Xia", @"Qiu", nil];
    
    self.lineupsArray = array;
    [array release];
    
 
    
    NSString *path = [[NSBundle mainBundle]pathForResource:@"lineuplist"
                                                    ofType:@"plist"];
    NSDictionary *dict = [[NSDictionary alloc] initWithContentsOfFile:path];
    self.names = dict;
    [dict release];
    
    NSArray *array2 = [[names allKeys] sortedArrayUsingSelector:@selector(compare:)];
   // NSArray *array2 = [names allKeys];
    
    self.keys = array2;
    
   
    
    

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
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    //return 1;
    return [keys count];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    //return [self.lineupsArray count];
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    return [nameSection count];

    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    /*
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier] autorelease];
    }
    
    // Configure the cell...
    
    NSUInteger row = [indexPath row];
    cell.text = [lineupsArray objectAtIndex:row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    
    return cell;
    */
    
    NSUInteger section = [indexPath section];
    NSUInteger row = [indexPath row];
    
    NSString *key = [keys objectAtIndex:section];
    NSArray *nameSection = [names objectForKey:key];
    
    static NSString *SectionsTableIdentifier = @"SectionsTableIdentifier";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             SectionsTableIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc]
                 initWithStyle:UITableViewCellStyleSubtitle
                 reuseIdentifier:SectionsTableIdentifier] autorelease];
    }
    
    //cell.textLabel.text = [nameSection objectAtIndex:row];
    cell.textLabel.text = [[nameSection objectAtIndex:row] objectForKey:@"name"];
    UIImage *avator = [UIImage imageNamed:[[nameSection objectAtIndex:row] objectForKey:@"avator"]];
    cell.imageView.image = avator;
    cell.detailTextLabel.text = [[nameSection objectAtIndex:row] objectForKey:@"time"];
    
    //[[self.coloursArray objectAtIndex:indexPath.row] valueForKey:@"Colour"];
    //  cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
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
    
    NSInteger row = [indexPath row];
    if (self.lineupDetailViewController == nil)
    {
        LineupDetailViewController *aLineupDetail = [[LineupDetailViewController alloc] initWithNibName:@"LineupDetailViewController" bundle:nil];
        self.lineupDetailViewController = aLineupDetail;
        [aLineupDetail release];
        
    }
    
    lineupDetailViewController.title = [NSString stringWithFormat:@"%@",[lineupsArray objectAtIndex:row]];
    
    StrawberryChangAppDelegate *delegate =[[UIApplication sharedApplication] delegate];
    [delegate.lineupsNavViewController pushViewController:lineupDetailViewController animated:YES];
    
}

/*
- (NSArray *)sectionIndexTitlesForTableView:(UITableView *)tableView
{
    return keys;
}
 */


- (NSString *) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    NSString *key = [keys objectAtIndex:section];
    return key;
}

//set cell height

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    //view size
    
    CGRect mframe = self.view.frame;
    
    return mframe.size.height / 7 ;
    
    //return 62.0;
    
}

@end
