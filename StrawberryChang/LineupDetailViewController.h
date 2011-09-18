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
    
    UIImageView *artistPhoto;
    
    UITextView *bio;
    UILabel *dateLabel;
    UILabel *timeLabel;
    UILabel *locationLabel;

    
}
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;
@property (nonatomic, retain) NSDictionary *lineupDict;
@property (nonatomic, retain) IBOutlet UITextView *bio;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *locationLabel;
@property (nonatomic, retain) IBOutlet UIImageView *artistPhoto;

@end
