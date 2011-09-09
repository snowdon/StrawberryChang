//
//  ArtistDetailViewController.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ArtistsModel;

@interface ArtistDetailViewController : UIViewController {
    ArtistsModel *artistsModel;
    int artistIndex;
    UITextView *artistBio;
    UIImageView *artistPhoto;
    
    NSDictionary *artistDict;
    
}
@property (nonatomic, retain) ArtistsModel *artistsModel;
@property (nonatomic, retain) IBOutlet UITextView *artistBio;
@property (nonatomic, retain) IBOutlet UIImageView *artistPhoto;
@property (nonatomic, retain) NSDictionary *artistDict;

- (void)setIndexForArtistBio:(int)index;
@end
