//
//  Clap.h
//  ClapBeat
//
//  Created by Takeshi Bingo on 2013/07/24.
//  Copyright (c) 2013年 Takeshi Bingo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <AudioToolbox/AudioToolbox.h>


@interface Clap : NSObject
+(id)initClap;
-(void)repeatClap:(int)count;

@end
