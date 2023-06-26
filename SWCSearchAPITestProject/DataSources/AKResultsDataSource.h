//
//  AKResultsDataSource.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import <UIKit/UIKit.h>
@class AKResultsDataSource;

@protocol AKResultsDataSourceDelegate <NSObject>

@optional
-(void)resultsDataSource:(AKResultsDataSource*)resultsDataSource didTapOnIconImageView:(UIImageView*)iconImageView;

@end



@interface AKResultsDataSource : NSObject<UITableViewDataSource,UITableViewDelegate>

@property (nonatomic,weak) UITableView *mainTV;

@property (nonatomic,weak) id<AKResultsDataSourceDelegate> delegate;

-(void)updateResultsWithArray:(NSArray*)array andMirrorOddEvenFlag:(BOOL)isMirrorOddEven;


@end
