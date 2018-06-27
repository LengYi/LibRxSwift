# RxSwift
[源码](https://github.com/ReactiveX/RxSwift)

##1、CocoaPod引入RxSwift库
Podfile 内容如下

~~~
platform :ios, '10.0'
inhibit_all_warnings!

def commonPod
	pod 'RxSwift',    '~> 4.0'
    pod 'RxCocoa',    '~> 4.0'
end

target 'LRxSwift' do
	commonPod
end

target 'LRxSwiftTests' do
	commonPod
end
~~~

##2、在需要使用RxSwift的地方import进来就可以了

~~~
import RxSwift
import RxCocoa
~~~

+ RxSwift：它只是基于 Swift 语言的 Rx 标准实现接口库，所以 RxSwift 里不包含任何 Cocoa 或者 UI 方面的类。
+ RxCocoa：是基于 RxSwift 针对于 iOS 开发的一个库，它通过 Extension 的方法给原生的比如 UI 控件添加了 Rx 的特性，使得我们更容易订阅和响应这些控件的事件。



