//
//  AKImageViewVC.h
//  SWCSearchAPITestProject
//
//  Created by Кирилл Тарасов on 26.06.2023.
//

#import <UIKit/UIKit.h>


@interface AKImageViewVC : UIViewController


@property (nonatomic,strong) UIImage *image;


@property (nonatomic,weak) NSLayoutConstraint *topIVConstraint;
@property (nonatomic,weak) NSLayoutConstraint *bottomIVConstraint;
@property (nonatomic,weak) NSLayoutConstraint *leftIVConstraint;
@property (nonatomic,weak) NSLayoutConstraint *rightIVConstraint;

@end
