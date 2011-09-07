//
//  ArtistsModel.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ArtistsModel : NSObject {
    NSMutableArray *artistsName;
    NSMutableArray *artistsBio;
    
}
@property (nonatomic, retain) NSMutableArray *artistsName;
@property (nonatomic, retain) NSMutableArray *artistsBio;

- (int)getNumberOfArtists;
- (NSString *)getArtistNameAtIndex:(int)index;
- (UIImage *)getArtistBioAtIndex:(int)index;



@end
