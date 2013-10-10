//
//  ViewController.m
//  ClapBeat
//
//  Created by Takeshi Bingo on 2013/07/24.
//  Copyright (c) 2013年 Takeshi Bingo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    Clap *clapInstance;
    IBOutlet UIPickerView *PickerView;
    NSString *repeatNumbersForPicker[10];
    int repeatCount;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    //clap 初期化
    clapInstance = [Clap initClap];
    
    repeatCount = 1;
    
    //Picker Viewの選択肢一覧を準備
    for (int i=0; i<10; i++) {
        NSString *numberText = [NSString stringWithFormat:@"%d回",i+1];
        repeatNumbersForPicker[i] = numberText;
    }
}

//よくわからない　メソッド
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    return 1;
}
-(NSInteger)pickerView:(UIPickerView *)thePickerView numberOfRowsInComponent:(NSInteger)component {
    return 10;
}
-(NSString *)pickerView:(UIPickerView *)thePickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component {
    return repeatNumbersForPicker[row];
}
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component {
    repeatCount = row+1;
    
}
-(IBAction)play:(id)sender{
    [clapInstance repeatClap:repeatCount];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
