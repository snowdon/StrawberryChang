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
                                @"Head First Java",
                                @"Head First iPhone",
                                @"Head First tennis",
                                nil];
    self.artistsName = tmpArtists;
    [tmpArtists release];
    
    NSMutableArray *tmpArtistsBio = [[NSArray alloc] initWithObjects:
                                 @"dsafdsafdas", @"dsafdsafa", @"dsafdsaf", nil];
    
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


- (UIImage *)getArtistBioAtIndex:(int)index
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
