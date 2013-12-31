//
//  ViewController.h
//  Bench Press Max
//
//  Created by Mateusz Grzyb on 27.12.2013.
//  Copyright (c) 2013 Mateusz Grzyb. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UIButton *calculateButton;
@property (strong, nonatomic) IBOutlet UIButton *clearButton;
@property (strong, nonatomic) IBOutlet UILabel *repsLabel;
@property (strong, nonatomic) IBOutlet UITextField *barbellWeight;
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
@property (strong, nonatomic) IBOutlet UILabel *descriptionLabel;

- (IBAction)clearAll:(id)sender;
-(IBAction)changeRepsValue:(id)sender;
-(IBAction)calculate:(id)sender;
@end
