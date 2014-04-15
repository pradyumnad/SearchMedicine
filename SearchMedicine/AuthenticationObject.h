//
//  AuthenticationObject.h
//  SearchMedicine
//
//  Created by Ramu Naidu on 14/04/14.
//  Copyright (c) 2014 Ramu Naidu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <FacebookSDK/FacebookSDK.h>


@interface AuthenticationObject : NSObject

- (void)sessionStateChanged:(FBSession *)session state:(FBSessionState) state error:(NSError *)error;
- (void)updateLoginForOpeningTime;
- (void)userLoggedIn;
- (void)userLoggedOut;
- (void)fbTouched;
+ (AuthenticationObject *)sharedInstance;
@property (nonatomic, copy) void (^updateLoginStatus)(NSString *status);

@end
