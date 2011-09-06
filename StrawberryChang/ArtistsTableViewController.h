//
//  ArtistsTableViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArtistsTableViewController : UITableViewController 
<UITableViewDelegate, UITableViewDataSource>
{
    NSMutableArray *artistsArray;
}
@property (nonatomic, retain) NSMutableArray *artistsArray;

@end
