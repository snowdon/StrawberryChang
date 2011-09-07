//
//  ArtistsModel.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ArtistsModel.h"


@implementation ArtistsModel
@synthesize artists;
@synthesize artistsBio;
@synthesize artistsPhoto;


- (id)init 
{
    self = [super init];
    NSMutableArray *tmpArtists = [[NSArray alloc] initWithObjects:
                                @"春",
                                @"夏天",
                                @"第五季",
                                nil];
    self.artists = tmpArtists;
    [tmpArtists release];
    
    
    NSMutableArray *tmpArtistsBio = [[NSArray alloc] initWithObjects:
                                     @"我是简介dsafdsafdsa1", 
                                     @"我是简介2", 
                                     @"我是简介3", 
                                     nil];
    
    self.artistsBio = tmpArtistsBio;
    [tmpArtistsBio release];
    
    NSMutableArray *tmpArtistsPhoto = [[NSArray alloc] initWithObjects:
                                     @"avator1.png", 
                                     @"avator2.png", 
                                     @"avator3.png", 
                                     nil];
    
    self.artistsPhoto = tmpArtistsPhoto;
    [tmpArtistsPhoto release];
    
    return self;
}

- (int)getNumberOfArtists
{
    return  [artists count];
}

- (NSString *)getArtistNameAtIndex:(int)index
{
    return [artists objectAtIndex:index];
}


- (NSString *)getArtistBioAtIndex:(int)index
{
    
   // UIImage *bookImage = [UIImage imageNamed:[bookImages objectAtIndex:index]];
    
    return [artistsBio objectAtIndex:index];
}

- (UIImage *)getArtistPhotoAtIndex:(int)index;
{
    UIImage *artistPhoto = [UIImage imageNamed:[artistsPhoto objectAtIndex:index]];
    return artistPhoto;
}


- (void) dealloc
{
    [artistsPhoto release];
    [artistsBio release];
    [artists release];
    [super dealloc];
}


@end
