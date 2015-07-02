//
//  ViewController.m
//  AppMSA
//
//  Created by joanahenriques on 01/07/15.
//  Copyright (c) 2015 joanahenriques. All rights reserved.
//

#import "ViewController.h"
#import "CalculateSizeForString.h"

@interface ViewController () <UIAlertViewDelegate>

@property (strong, nonatomic) IBOutlet UILabel *HelloLabel;
@property (strong, nonatomic) IBOutlet UILabel *AgainLabel;
@property (strong, nonatomic) UIFont * font;
@property CGSize size;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.font = [UIFont fontWithName:@"Helvetica" size:16];
    self.size =self.view.frame.size ;
    
    [self addLabelHelloMSA];
    [self addLabelAgain];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 * Add a label with a message
 *
 */
-(void)addLabelHelloMSA{

    NSString * stringHello = @"Hello";
    
    CGSize sizeHelloMSA = [CalculateSizeForString sizeForString:stringHello withFont:self.font andSize:self.size];
    
    self.HelloLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.size.width/2 - sizeHelloMSA.width/2, self.size.height/2 - sizeHelloMSA.height, sizeHelloMSA.width, sizeHelloMSA.height)];
    self.HelloLabel.font = self.font;
    self.HelloLabel.text = stringHello;
    
    [self.view addSubview:self.HelloLabel];


}

/*
 * Add a label with a message
 *
 */
-(void)addLabelAgain{
    
    NSString * stringAgain = @"Again!";
    
    CGSize sizeAgain = [CalculateSizeForString sizeForString:stringAgain withFont:self.font andSize:self.size];
    
    self.AgainLabel = [[UILabel alloc] initWithFrame:CGRectMake(self.size.width/2 - sizeAgain.width/2, self.size.height/2, sizeAgain.width, sizeAgain.height)];
    self.AgainLabel.font = self.font;
    self.AgainLabel.text = @"";
    
    [self.view addSubview:self.AgainLabel];
    
    
}

/*
 * Button opens an AlertView
 *
 */
- (IBAction)OKButton:(UIButton *)sender {
    
    
    UIAlertView * popUp = [[UIAlertView alloc] initWithTitle:@"Great!" message:@"I'm a pop up" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Ok", nil];
    
    [popUp show];
    
}


/*
 * AlertView buttons's actions
 *
 */
-(void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
    
    if (buttonIndex == 0) {// Cancel Button
        
    }
    else if (buttonIndex == 1) {// Ok Button
        //set value AgainLabel
        self.AgainLabel.text = @"Again!";
        
    }
    
}



@end
