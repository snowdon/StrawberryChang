//
//  ArtistDetailViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>




@interface ArtistDetailViewController : UIViewController {
    IBOutlet UILabel *titleLabel;
    IBOutlet UITextView *bioTextView;
    IBOutlet UIImageView *photoImageView;
    IBOutlet UILabel *timeLabel;
 //   IBOutlet NSDictionary *artistDict;


    
}

@property (nonatomic, retain) IBOutlet UILabel *titleLabel;
@property (nonatomic, retain) IBOutlet UITextView *bioTextView;
@property (nonatomic, retain) IBOutlet UIImageView *photoImageView;
@property (nonatomic, retain) IBOutlet UILabel *timeLabel;
//@property (nonatomic, retain) IBOutlet NSDictionary *artistDict;


@end
