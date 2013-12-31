//
//  ViewController.m
//  Bench Press Max
//
//  Created by Mateusz Grzyb on 27.12.2013.
//  Copyright (c) 2013 Mateusz Grzyb. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
-(float) calculateMax;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.calculateButton.layer setCornerRadius:3];
    [self.clearButton.layer setCornerRadius:3];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// Metoda zwracająca przybliżony rekord dla jednego powtórzenia dla użytkownika.
-(float)calculateMax{
    float barbellWeight = [self.barbellWeight.text floatValue];
    int reps = [self.repsLabel.text intValue];
    switch (reps) {
        case 2:
            return 1.07 * barbellWeight;
            break;
        case 3:
            return 1.12 * barbellWeight;
            break;
        case 4:
            return 1.15 * barbellWeight;
            break;
        case 5:
            return 1.18 * barbellWeight;
            break;
        case 6:
            return 1.21 * barbellWeight;
            break;
        case 7:
            return 1.24 * barbellWeight;
            break;
        case 8:
            return 1.27 * barbellWeight;
            break;
        case 9:
            return 1.3 * barbellWeight;
            break;
        case 10:
            return 1.33 * barbellWeight;
            break;
        case 11:
            return 1.35 * barbellWeight;
            break;
        case 12:
            return 1.37 * barbellWeight;
            break;
    }
    return barbellWeight;
}

// Kliknięcie przycisku Clear
- (IBAction)clearAll:(id)sender {
    [self.resultLabel setHidden:YES];
    [self.clearButton setHidden:YES];
    [self.barbellWeight setText:@""];
    [self.slider setValue:7];
    [self.repsLabel setText:@"7"];
}

// Zmiana tekstu labela po akcji przesunięcia slidera
-(IBAction)changeRepsValue:(id)sender{
    int sliderValue = (int)[self.slider value];
    [self.repsLabel setText:[NSString stringWithFormat:@"%d", sliderValue]];
}

// Akcja po kliknięciu buttona Calculate
-(IBAction)calculate:(id)sender{
    [self.barbellWeight resignFirstResponder];
    if([self.barbellWeight.text length] != 0){
        
        [self.resultLabel setHidden:NO];
        [self.clearButton setHidden:NO];
        
        NSString *result = [NSString stringWithFormat:@"Your max result: %.2f", [self calculateMax]];
        [self.resultLabel setText:result];
    }else{
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Warning" message:@"Please set barbell weight first." delegate:self cancelButtonTitle:@"Ok" otherButtonTitles:nil, nil];
        [alert show];
    }
}
@end
