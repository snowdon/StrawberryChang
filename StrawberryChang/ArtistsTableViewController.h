//
//  ArtistsTableViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ArtistDetailViewController;

@interface ArtistsTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *artistsArray;

    ArtistDetailViewController *artistDetailViewController;

    NSDictionary *names;
    NSArray *keys;
    
}
@property (nonatomic, retain) NSMutableArray *artistsArray;

@property (nonatomic, retain) ArtistDetailViewController *artistDetailViewController;

@property (nonatomic, retain) NSDictionary *names;
@property (nonatomic, retain) NSArray *keys;

@end
