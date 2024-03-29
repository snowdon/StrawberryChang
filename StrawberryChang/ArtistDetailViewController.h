//
//  ArtistDetailViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface ArtistDetailViewController : UIViewController {
    
    UIImageView *artistPhoto;
    
    NSDictionary *artistDict;
    
    UITextView *bio;
    UILabel *dateLabel;
    UILabel *timeLabel;
    UILabel *locationLabel;
    UILabel *nameLabel;
    
    
    
    
}

@property (nonatomic, retain) IBOutlet UITextView *bio;
@property (nonatomic, retain) NSDictionary *artistDict;
@property (nonatomic, retain) IBOutlet UILabel *dateLabel;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
@property (nonatomic, retain) IBOutlet UILabel *locationLabel;
@property (nonatomic, retain) IBOutlet UILabel *nameLabel;

@end
