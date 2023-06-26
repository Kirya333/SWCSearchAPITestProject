//
//  AKWebInteraction.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import <Foundation/Foundation.h>

typedef void(^webInteractionCompletion)(NSData *responseData, NSError *error);


static NSString *const WEB_INTERACTION_ERROR_DOMAIN;


@interface AKWebInteraction : NSObject

+(instancetype)sharedInstance;

-(id)initInstance;

-(void)performURLRequest:(NSURLRequest*)request withCompletion:(webInteractionCompletion)completion;
-(void)cancelAllRequests;

@end
