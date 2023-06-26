//
//  AKGitHubSearchAPIResultElement+AKJsonInitProtocol.m
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import "AKGitHubSearchAPIResultElement+AKJsonInitProtocol.h"

@implementation AKGitHubSearchAPIResultElement (AKJsonInitProtocol)

-(id)initWithJsonDict:(NSDictionary*)dict
{
    if (!dict)
        return nil;
    
    if (self = [super init])
    {
        [self setAvatar_url:dict[@"avatar_url"]];
        [self setLogin:dict[@"login"]];
        [self setUrl:dict[@"url"]];
        
    }
    
    return self;
}

@end
