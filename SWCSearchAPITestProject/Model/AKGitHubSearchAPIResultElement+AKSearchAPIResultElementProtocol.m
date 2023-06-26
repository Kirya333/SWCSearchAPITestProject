//
//  AKGitHubSearchAPIResultElement+AKSearchAPIResultElementProtocol.m
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import "AKGitHubSearchAPIResultElement+AKSearchAPIResultElementProtocol.h"

@implementation AKGitHubSearchAPIResultElement (AKSearchAPIResultElementProtocol)

-(NSString*)imageURLString
{
    return [self avatar_url];
}

-(NSString*)titleString
{
    return [self login];
}

-(NSString*)subtitleString
{
    return [self url];
}

@end
