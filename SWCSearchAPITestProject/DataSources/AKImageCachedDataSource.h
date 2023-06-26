//
//  AKImageCache.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import <UIKit/UIKit.h>

@interface AKImageCachedDataSource : NSObject

-(UIImage*)imageWithURLString:(NSString*)urlString;
-(void)downloadImageWithURLString:(NSString*)urlString withCompletion:(void(^)(NSString *urlString, UIImage* resImage))completion;
-(void)addImage:(UIImage*)image withURLString:(NSString*)urlString;


-(void)cancelAllDownloads;

@end
