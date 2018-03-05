//#import "TakoButton.h"
@class TakoButton;

//宣告代理方法
@protocol takoButtonDelegate <NSObject>

@required
-(void)didTapButton:(TakoButton*)takoButton;


@end


//宣告資料來源方法
@protocol takoButtonDataSource <NSObject>

@required
//提供顯示在Button上的文字
-(NSString*) labelTextOnTakoButon;


@optional
-(BOOL)test;

@end
