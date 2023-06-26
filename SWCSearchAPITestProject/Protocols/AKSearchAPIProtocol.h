//
//  AKSearchAPIProtocol.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

typedef void(^SuccessUpdateBlock)(NSString *searchStr, NSArray *searchResult);
typedef void(^FailUpdateBlock)(NSString *searchStr, NSError *error);

#pragma mark - AKSearchAPIResultElementProtocol
@protocol AKSearchAPIResultElementProtocol <NSObject>

-(NSString*)imageURLString;
-(NSString*)titleString;
-(NSString*)subtitleString;

@end


#pragma mark - AKSearchAPIProtocol
@protocol AKSearchAPIProtocol <NSObject>

-(void)setSearchString:(NSString*)searchStr;
-(void)setSuccessUpdateBlock:(SuccessUpdateBlock)successUpdateBlock;

@optional
-(void)setFailUpdateBlock:(FailUpdateBlock)failUpdateBlock;

@end
