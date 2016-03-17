# 代理传值

很多时候我们会有这样一个需求，要从一个ViewController跳转到另一个ViewController中选择某个选项然后返回到第一个ViewController中显示出来，这个时候就需要传值，模型图如下：<br />
![模型图](https://github.com/zyfoolboy/DelegatePassValue/blob/master/Delegate/Delegate/Assets.xcassets/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-03-17%20%E4%B8%8B%E5%8D%882.10.47.imageset/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202016-03-17%20%E4%B8%8B%E5%8D%882.10.47.png)

注意是第二个ViewController传值给第一个ViewController如下图<br />
![](https://github.com/zyfoolboy/DelegatePassValue/blob/master/Delegate/Delegate/Assets.xcassets/Untitled.gif)<br/>
在返回的时候传回一个字符在第一个ViewController中显示出来
