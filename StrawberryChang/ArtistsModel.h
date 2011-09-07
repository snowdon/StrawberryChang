//
//  ArtistsModel.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ArtistsModel : NSObject {
    NSMutableArray *artists;
    NSMutableArray *artistsBio;
    NSMutableArray *artistsPhoto;
    
}
@property (nonatomic, retain) NSMutableArray *artists;
@property (nonatomic, retain) NSMutableArray *artistsBio;
@property (nonatomic, retain) NSMutableArray *artistsPhoto;

- (int)getNumberOfArtists;
- (NSString *)getArtistNameAtIndex:(int)index;
- (NSString *)getArtistBioAtIndex:(int)index;
- (UIImage *)getArtistPhotoAtIndex:(int)index;




@end
