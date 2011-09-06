//
//  LineupsTableViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LineupDetailViewController;

@interface LineupsTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    IBOutlet UITableView *lineupsTableView;
    NSMutableArray *lineupsArray;
    LineupDetailViewController *lineupDetailViewController;
    
}

@property (nonatomic, retain) NSMutableArray *lineupsArray;
@property (nonatomic, retain) LineupDetailViewController *lineupDetailViewController;
@end
