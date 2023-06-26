//
//  AKITunesSearchAPIResultElement+AKSearchAPIResultElementProtocol.m
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import "AKITunesSearchAPIResultElement+AKSearchAPIResultElementProtocol.h"

@implementation AKITunesSearchAPIResultElement (AKSearchAPIResultElementProtocol)

-(NSString*)imageURLString
{
    return [self artworkUrl100];
}

-(NSString*)titleString
{
    return [self trackName];
}

-(NSString*)subtitleString
{
    return [self artistName];
}

@end
