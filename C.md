# 线程


```c#
Thread thread1 = new Thread(new ThreadStart(Thread1));
thread1.Start();
static void Thread1(){
}


```

![image](https://github.com/v2vv/jupyter_hub/raw/master/images/Sat_Jul_09_2022_1657300385652.png)


# 委托与回调
    delegate


# 嵌套类 包含类 

    不论外部类型是类、接口还是构造，嵌套类型均默认为 private；仅可从其包含类型中进行访问。
    
    类”的嵌套类型可以是 public、protected、internal、protected internal、private 或 private protected。
    
    构造的嵌套类型可以是 public、internal 或 private。
    
    嵌套类型（或内部类型）可访问包含类型（或外部类型）。 若要访问包含类型，请将其作为参数传递给嵌套类型的构造函数。
    
    嵌套类型可以访问其包含类型可以访问的所有成员。 它可以访问包含类型的私有成员和受保护成员（包括所有继承的受保护成员）。

    嵌套类可以访问所有包含类对象
    
    外部类只能够访问修饰符为public、internal嵌套类的字段、方法、属性。

    类内部可以访问所有private对象
    
    如果嵌套的类声明为私有，就不能在包含类外部实例化嵌套类。
    dd
    使用嵌套类的一个原因是嵌套类可以访问其包含类的私有和受保护成员。


# 构造函数 

# 静态 static

不会被实例化，可通过类名访问，有公私两种

# 公共 public

# 私有 private

# 分部类 partial

# 实例化


# 语法

- `(1 << (x))`  1左移x位