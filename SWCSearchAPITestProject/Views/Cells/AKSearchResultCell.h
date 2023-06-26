//
//  AKSearchResultCell.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 25.06.2023.
//

#import <UIKit/UIKit.h>
@class AKSearchResultCell;

@protocol AKSearchResultCellDelegate <NSObject>

@optional
-(void)didTapOnIconInSearchResultCell:(AKSearchResultCell*)cell;

@end

@interface AKSearchResultCell : UITableViewCell

@property (nonatomic,copy) NSString *iconURLString;

@property (nonatomic,weak) UIImageView *iconIV;
@property (nonatomic,weak) UILabel *titleLbl;
@property (nonatomic,weak) UILabel *subtitleLbl;

@property (nonatomic,weak) id<AKSearchResultCellDelegate>delegate;

-(void)buildView;

@end
