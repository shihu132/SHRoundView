//
//  SHRoundview.h
//  SHRoundView
//
//  Created by joyshow on 2018/10/16.
//  Copyright © 2018年 石虎. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger , SH_RoundviewType) {
    SH_RoundviewTypeSystem = 0,
    SH_RoundviewTypeCustom ,
};
typedef void(^JumpBlock)(NSInteger num , NSString *name);

@interface SHRoundview : UIView

@property (nonatomic, copy)   JumpBlock back;// 点击按钮触发事件
@property (nonatomic, assign) SH_RoundviewType Type;// 按钮风格
@property (nonatomic, assign) CGFloat BtnWitch;// 按钮的宽度
@property (nonatomic, assign) CGFloat Witch;// 视图的宽度
@property (nonatomic, strong) UIColor *BtnBackgroudColor;// 按钮的背景颜色

- (void)show;// 展示
/**
 *  创建按钮
 *
 *  @param type        按钮的风格
 *  @param BtnWitch    按钮的宽度
 *  @param sizeWith    字体是否自动适应按钮的宽度
 *  @param msak        是否允许剪切
 *  @param radius      圆角的大小
 *  @param image       图片数组
 *  @param titileArray 名字数组
 *  @param titleColor  字体的颜色
 */
- (void)BtnType:(SH_RoundviewType)type BtnWitch:(CGFloat)BtnWitch  adjustsFontSizesTowidth:(BOOL)sizeWith  msaksToBounds:(BOOL)msak conrenrRadius:(CGFloat)radius image:(NSMutableArray *)image TitileArray:(NSMutableArray *)titileArray titileColor:(UIColor *)titleColor;
@end


