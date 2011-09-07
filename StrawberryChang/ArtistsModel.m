//
//  ArtistsModel.m
//  StrawberryChang
//
//  Created by  Chuns on 11-9-7.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import "ArtistsModel.h"


@implementation ArtistsModel
@synthesize artistsName;
@synthesize artistsBio;


- (id)init 
{
    self = [super init];
    NSMutableArray *tmpArtists = [[NSArray alloc] initWithObjects:
                                @"春",
                                @"夏天",
                                @"第五季",
                                nil];
    self.artistsName = tmpArtists;
    [tmpArtists release];
    
    NSMutableArray *tmpArtistsBio = [[NSArray alloc] initWithObjects:
                                 @"我是简介1", @"我是简介2", @"我是简介3", nil];
    
    self.artistsBio = tmpArtistsBio;
    [tmpArtistsBio release];
    return self;
}

- (int)getNumberOfArtists
{
    return  [artistsName count];
}

- (NSString *)getArtistNameAtIndex:(int)index
{
    return [artistsName objectAtIndex:index];
}


- (NSString *)getArtistBioAtIndex:(int)index
{
    
   // UIImage *bookImage = [UIImage imageNamed:[bookImages objectAtIndex:index]];
    
    return [artistsBio objectAtIndex:index];
}


- (void) dealloc
{
    [artistsBio release];
    [artistsName release];
    [super dealloc];
}


@end
