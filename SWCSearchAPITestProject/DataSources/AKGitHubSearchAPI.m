//
//  AKGitHubSearchAPI.m
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import "AKGitHubSearchAPI.h"
#import "AKWebInteraction.h"
#import "AKGitHubSearchAPIResultElement+AKJsonInitProtocol.h"

static NSString *const githubSearchAPIURL = @"https://api.github.com/search/users";

@implementation AKGitHubSearchAPI


@synthesize searchString = _searchString;

-(void)setSearchString:(NSString *)searchString
{
    _searchString = [searchString copy];
    
    NSURLRequest *request = [self urlRequestForSearchString:_searchString];
    
    NSString *searchStringCopy = _searchString.copy;
    if (request){
        [[AKWebInteraction sharedInstance]performURLRequest:request withCompletion:^(NSData *responseData, NSError *error) {
            if (!error){
                
                if (!responseData || responseData.length == 0)
                    if ([self successUpdateBlock])
                        [self successUpdateBlock](searchStringCopy,@[]);
                
                
                NSError *jsonParseError;
                NSDictionary *d = [NSJSONSerialization JSONObjectWithData:responseData
                                                                  options:0
                                                                    error:&jsonParseError];
                if (!d)
                    if ([self failUpdateBlock]) {
                        [self failUpdateBlock](searchStringCopy,jsonParseError);
                    }
                
                
                NSArray *jsonResArray = d[@"items"];
                if (!jsonResArray || ![jsonResArray isKindOfClass:[NSArray class]]) {
                    if ([self failUpdateBlock]) {
                        [self failUpdateBlock](searchStringCopy,nil);
                    }
                }
                
                __block NSMutableArray *resArray = [NSMutableArray new];
                [jsonResArray enumerateObjectsUsingBlock:^(NSDictionary *elementDict, NSUInteger idx, BOOL *stop) {
                    AKGitHubSearchAPIResultElement *element = [[AKGitHubSearchAPIResultElement alloc]initWithJsonDict:elementDict];
                    if (element)
                        [resArray addObject:element];
                }];
                
                
                if ([self successUpdateBlock]){
                    [self successUpdateBlock](searchStringCopy, resArray);
                }
                
            }else{
                if ([self failUpdateBlock]){
                    [self failUpdateBlock](searchStringCopy,error);
                }
            }
        }];
    }else{
        if ([self successUpdateBlock])
            [self successUpdateBlock](searchStringCopy,@[]);
    }
}


-(NSURLRequest*)urlRequestForSearchString:(NSString*)searchString
{
    if (!searchString || [searchString isEqualToString:@""])
        return nil;
    
    NSString *percentEncodedSearchString = [searchString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
    
    if (!percentEncodedSearchString)
        return nil;
    
    NSString *requestStr = [NSString stringWithFormat:@"%@?q=%@",githubSearchAPIURL,percentEncodedSearchString];
    
    NSURL *url = [NSURL URLWithString:requestStr];
    
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    
    return request;
    
}



@end
