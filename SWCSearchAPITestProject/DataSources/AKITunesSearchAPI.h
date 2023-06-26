//
//  AKITunesSearchAPI.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import <Foundation/Foundation.h>
#import "AKSearchAPIProtocol.h"

static NSString *const itunesSearchAPIURL;


@interface AKITunesSearchAPI : NSObject<AKSearchAPIProtocol>


@property (nonatomic,copy) NSString *searchString;
@property (nonatomic,copy) SuccessUpdateBlock successUpdateBlock;
@property (nonatomic,copy) FailUpdateBlock failUpdateBlock;


@end
