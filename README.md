# 代理传值

很多时候我们会有这样一个需求，要从一个ViewController跳转到另一个ViewController中选择某个选项然后返回到第一个ViewController中显示出来，这个时候就需要传值，模型图如下：<br />
![模型图](https://github.com/zyfoolboy/DelegatePassValue/blob/master/Delegate/Delegate/Assets.xcassets/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-03-17%20%E4%B8%8B%E5%8D%882.10.47.imageset/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-03-17%20%E4%B8%8B%E5%8D%882.10.47.png)

注意是第二个ViewController传值给第一个ViewController如下图<br />
![](https://github.com/zyfoolboy/DelegatePassValue/blob/master/Delegate/Delegate/Assets.xcassets/pass.gif)<br/>
在返回的时候把第二个ViewController中TextField的内容传到第一个ViewController中并在Label中显示出来<br/>
具体做法是现在第二个ViewController中声明一个协议和一个delegate属性<br />
```
protocol NextViewControllerDelegate
- (void)backAValue:(NSString *)str;
@end
@interface NextViewController : UIViewController
@property (nonatomic, assign) id<NextViewControllerDelegate> delegate;
```
在返回的时候执行协议方法把TextFiled的内容传过去
```
- (IBAction)backVC:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
    [self.delegate backAValue:self.textField.text];
}
```
在第一个ViewController中遵循第二个ViewController定的协议并设置代理，实现协议中的方法，这样就可以实现代理传值了
```
@interface ViewController ()<NextViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *textLabel;
@end
@implementation ViewController
- (void)backAValue:(NSString *)str {
    self.textLabel.text = str;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"showNext"]) {
        NextViewController *next = segue.destinationViewController;//获取制订协议的对象
        next.delegate = self;//设置自己为制定协议者的代理
    }
}
```
