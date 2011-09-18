//
//  ArtistDetailViewController.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ArtistDetailViewController.h"

@implementation ArtistDetailViewController


@synthesize artistDict;
@synthesize bio;
@synthesize dateLabel;
@synthesize timeLabel;
@synthesize locationLabel;
@synthesize nameLabel;



- (void)viewWillAppear:(BOOL)animated
{
    bio.text = [artistDict objectForKey:@"bio"];
    dateLabel.text = [artistDict objectForKey:@"date"];
    timeLabel.text = [artistDict objectForKey:@"time"];
    locationLabel.text = [artistDict objectForKey:@"location"];
    nameLabel.text = [artistDict objectForKey:@"name"];
                      
    
    
    artistPhoto.image = [UIImage imageNamed:[artistDict objectForKey:@"photo"]];

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
