//
//  StrawberryChangAppDelegate.h
//  StrawberryChang
//
//  Created by  Chuns on 11-9-6.
//  Copyright 2011年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
@class LineupsNavViewController;
@class ArtistsNavViewController;

@interface StrawberryChangAppDelegate : NSObject <UIApplicationDelegate> {
    IBOutlet UITabBarController *rootController;
    IBOutlet LineupsNavViewController *lineupsNavViewController;
    IBOutlet ArtistsNavViewController *artistsNavViewController;

}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UITabBarController *rootController;
@property (nonatomic, retain) IBOutlet LineupsNavViewController *lineupsNavViewController;
@property (nonatomic, retain) IBOutlet ArtistsNavViewController *artistsNavViewController;

@end
