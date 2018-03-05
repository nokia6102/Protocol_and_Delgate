
#import "TakoButton.h"

@implementation TakoButton
@synthesize delegate,datasrouce;

//當點按此類實體時啟動此事件
-(void)tapGestureEvent
{
    
    NSLog(@"Button Pressed.");
    //由代 人去啟動代理方法
    [delegate didTapButton:self];

    NSString *buttonText = [datasrouce labelTextOnTakoButon];
    NSLog(@"拿到字串 : %@",buttonText);
    
    //把文字顯示在按鈕上
    //初始化一個跟自己大小一樣的UILabel
    UILabel *label = [[UILabel alloc] initWithFrame: CGRectMake(0, 0, self.frame.size.width , self.frame.size.height)];
    label.text = buttonText;
    [label setTextAlignment:NSTextAlignmentCenter];
    //把文字到類別實體上
    [self addSubview:label];
    
}

//類別實體的初始化函式
-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        self.frame = frame;
        
        //加上點按手勢啟動tapGestureEvent
        UITapGestureRecognizer *tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGestureEvent )];
        
        //動把手勢加到類別實體上
        [self addGestureRecognizer:tapGesture];
        
        
    }
    
    return  self;
}

@end
