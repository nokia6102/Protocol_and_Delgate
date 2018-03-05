#import "ViewController.h"
#import "TakoButton.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //以待定大小初始化
    TakoButton *button = [[TakoButton alloc] initWithFrame:CGRectMake(100, 100, 200, 200)];
    //著色
    button.backgroundColor = [UIColor yellowColor];
    //將button加到畫面上
    [self.view addSubview:button];
    button.delegate = self;
    button.datasrouce = self;
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Delegate & DataSource

-(void)didTapButton:(TakoButton *)takoButton
{
    NSLog(@"代理人啟動了代理方法");
}

-(NSString *)labelTextOnTakoButon
{
    return @"我是按鈕";
}


@end
