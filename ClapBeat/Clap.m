//
//  Clap.m
//  ClapBeat
//
//  Created by Takeshi Bingo on 2013/07/24.
//  Copyright (c) 2013年 Takeshi Bingo. All rights reserved.
//

#import "Clap.h"

@implementation Clap {
    // 音ファイルのURL
    CFURLRef soundURL;
    // sound ID
    SystemSoundID soundID;
}
-(void)setSound {
    //ファイルを読み込みsouldURLを生成
    CFBundleRef mainBundle = CFBundleGetMainBundle();
    soundURL = CFBundleCopyResourceURL(mainBundle, CFSTR("clap"), CFSTR("wav"), nil);
    AudioServicesCreateSystemSoundID(soundURL, &soundID);
    
}

//初期化処理  よくわからない
+(id)initClap {
    return [[self alloc] init];
}

-(id)init{
    self =[super init];
    [self setSound];
    return self;
}


//再生　ループ
-(void)repeatClap:(int)count{
    int i = 0;
    while (i < count) {
        [self play];
        i++;
        usleep(500000);
    }
}

-(void)play {
    AudioServicesPlaySystemSound(soundID);
}


@end
