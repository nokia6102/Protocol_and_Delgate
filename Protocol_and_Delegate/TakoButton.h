#import <UIKit/UIKit.h>
#import "takoButtonProtocol.h"  // 引入協定(製作協定時)


@interface TakoButton : UIView
@property (nonatomic) id<takoButtonDelegate> delegate;
@property (nonatomic) id<takoButtonDataSource> datasrouce;


@end
