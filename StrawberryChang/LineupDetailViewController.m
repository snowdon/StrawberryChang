//
//  LineupDetailViewController.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "LineupDetailViewController.h"


@implementation LineupDetailViewController

@synthesize nameLabel;
@synthesize lineupDict;
@synthesize bio;
@synthesize dateLabel;
@synthesize timeLabel;
@synthesize locationLabel;
@synthesize artistPhoto;



- (void)viewWillAppear:(BOOL)animated
{
    nameLabel.text = [lineupDict objectForKey:@"name"];
    
    bio.text = [lineupDict  objectForKey:@"bio"];
    dateLabel.text = [lineupDict  objectForKey:@"date"];
    timeLabel.text = [lineupDict  objectForKey:@"time"];
    locationLabel.text = [lineupDict  objectForKey:@"location"];
 
    artistPhoto.image = [UIImage imageNamed:[lineupDict objectForKey:@"photo"]];
   
    [super viewWillAppear:animated];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)dealloc
{
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
    // Do any additional setup after loading the view from its nib.
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
