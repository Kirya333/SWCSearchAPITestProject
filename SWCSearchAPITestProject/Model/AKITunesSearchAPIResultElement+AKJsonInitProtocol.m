//
//  AKITunesSearchAPIResultElement+AKJsonInitProtocol.m
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import "AKITunesSearchAPIResultElement+AKJsonInitProtocol.h"

@implementation AKITunesSearchAPIResultElement (AKJsonInitProtocol)

-(id)initWithJsonDict:(NSDictionary*)dict
{
    if (!dict)
        return nil;
    
    if (self = [super init])
    {
        [self setArtworkUrl100:dict[@"artworkUrl100"]];
        [self setTrackName:dict[@"trackName"]];
        [self setArtistName:dict[@"artistName"]];
        
    }
    
    return self;
}


@end
