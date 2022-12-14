经常看到一些Mac程序有重启选项, 那这个如何做呢?  
当时我正好学习到了 NSTask 多开, 转念一想, 多开不就是运行一个程序吗? 那能不能先关闭自己, 再用 NSTask 启动自己呢!   
经过一番测试, 确实是可以的 ! 废话不多说, 代码如下  

```object-c

#import "XQTask.h"

@implementation XQTask

/**
重启自己
 */
+ (void)restart {
    [self save];
    [self open];
    exit(0);
}

/**
退出之前需要保存的数据
 */
+ (void)save {

}

/**
命令行执行自己程序
可利用这个多开, 或者打开自己
 */
+ (void)open {
    //获得本程序的路径
    NSString *applicationPath = [[NSBundle mainBundle] bundlePath];
    //创建任务
    NSTask *task = [[NSTask alloc] init];
    //启动路径
    task.launchPath = @"/usr/bin/open";
    //添加参数
    task.arguments = @[@"-n", applicationPath];
    //启动
    [task launch];
}

@end

```


惯例, 给出演示 [Demo](https://github.com/SyKingW/XQMacMultipleAndResetApp)

参考文章   
[NSTask:Mac开发App多开](https://blog.csdn.net/weixin_33910759/article/details/87593813)

