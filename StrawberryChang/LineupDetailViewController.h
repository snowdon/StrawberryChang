//
//  LineupDetailViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface LineupDetailViewController : UIViewController {
    NSDictionary *lineupDict;
    UILabel *nameLabel;
}
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) NSDictionary *lineupDict;


@end
