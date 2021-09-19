# 回调函数

- 当程序跑起来时，应用程序会时常通过API调用库里预先备好的函数。但是有些库函数却要求应用先传给他一个函数，好在合适的时候调用，以完成目标任务。这个被传入、后又被调用的函数被称为回调函数。

回调是将函数作为参数传递给另一个函数的方式
```javascript
function displayDone() {
    console.log('Done!');
}

// timer value is in milliseconds
setTimeout(displayDone, 3000);
```

# 匿名函数

匿名函数是没有名称的函数。 匿名函数的行为方式与常规函数相同，它们也是开发人员通常设置回调的方式。
```javascript
setTimeout(
    function() { // anonymous function
        console.log('Done!');
    },
    3000 // 3000 milliseconds (3 seconds)
)
```

# 箭头函数

箭头函数或胖箭头函数是创建匿名函数的一种略有不同的方式。 箭头函数使用 => 运算符指示函数主体的开头  
```javascript
setTimeout(
    () => { // anonymous function
        console.log('Done!');
    },
    3000 // 3000 milliseconds (3 seconds)
)
```

# 闭包

- 问：如何从外部读取局部变量。
  答：那就是在函数的内部，再定义一个函数。

- 闭包的用途：
    - 可以读取函数内部的变量
    - 让这些变量的值始终保持在内存中。

- 在一个函数内创建另一个函数，通过另一个函数访问这个函数的局部变量

- 闭包会使变量始终保存在内存中，如果不当使用会增大内存消耗

大部分我们所写的 JavaScript 代码都是基于事件的 — 定义某种行为，然后将其添加到用户触发的事件之上（比如点击或者按键）。我们的代码通常作为回调：为响应事件而执行的函数。

```javascript
function makeFunc() {
    var name = "Mozilla";
    function displayName() {
        alert(name);
    }
    return displayName;
}

var myFunc = makeFunc();
myFunc();
```


# 原型链


![](https://pic2.zhimg.com/80/92241be9f5f60797d6b3b8f280c475c0_720w.jpg?source=1940ef5c)


![](https://pic3.zhimg.com/80/4bd062df812825e61ca713e71f523271_720w.jpg?source=1940ef5c)

# prototype 对象

- prototype是构造函数的属性，指向属于该构造函数的原型对象

- prototype 属性的值是一个对象，我们希望被原型链下游的对象继承的属性和方法，都被储存在其中。
- Object.prototype.watch()、Object.prototype.valueOf() 等等成员，适用于任何继承自 Object() 的对象类型，包括使用构造器创建的新的对象实例。
- Object.is()、Object.keys()，以及其他不在 prototype 对象内的成员，不会被“对象实例”或“继承自 Object() 的对象类型”所继承。这些方法/属性仅能被 Object() 构造器自身使用。
- Object 的 prototype 属性上定义了大量的方法；继承自 Object 的对象都可以使用这些方法。

js 中基本每个对象都有__proto__属性,然后一些特殊的对象即函数，函数对象有一个属性叫做prototype,其次通过 new 关键字可以通过一个函数创建一个对象  
```javascript
function fun(){

}

var obj=new fun()
```
这里obj和fun都是对象，他们都有__proto__,但fun有prototype属性而obj是没有的mdn说protorype中存放的是希望被继承的方法，这里是很好理解的，如：fun.prototype.hello=function(){alert('hello')}那么刚才创建的obj就也可以调用这一方法了：obj.hello()__proto__则到底是个什么呢？它就是对象的构造函数的prototype，即obj.__proto__===obj.constructor.prototype而obj的构造函数是fun也就是obj.__proto__===fun.prototype


# \_\_proto\_\_

- JavaScript中任意对象都有一个内置属性[[prototype]]，在ES5之前没有标准的方法访问这个内置属性，但是大多数浏览器都支持通过__proto__来访问。ES5中有了对于这个内置属性标准的Get方法Object.getPrototypeOf().

- 指向构造该对象的构造函数的原型，这也保证了实例能够访问在构造函数原型中定义的属性和方法。

- 隐式原型指向创建这个对象的函数(constructor)的prototype

- Object.prototype 这个对象是个例外，它的__proto__值为null

# 方法 Function

- 方法这个特殊的对象，除了和其他对象一样有上述_proto_属性之外，还有自己特有的属性——原型属性（prototype），这个属性是一个指针，指向一个对象，这个对象的用途就是包含所有实例共享的属性和方法（我们把这个对象叫做原型对象）。原型对象也有一个属性，叫做constructor，这个属性包含了一个指针，指回原构造函数。

-  `Function.prototype === Object.__proto__`

# tip

变量不能用来构造别的变量,故没有原型,数组和函数可以用来构造别的数组和函数,他们具有原型,而prototype用于保存可用于构造的对象,所有的的函数都应该有这些对象,否则无法用于继承


# 编程规范 三种命名方法

PascalCase,camelCase,hungarian_notation


# dotenv

Dotenv 是一个零依赖模块，它将环境变量从.env文件加载到process.env

``` npm install dotenv ```

# process.env

全局变量

process 对象是一个 global （全局变量），提供有关信息，控制当前 Node.js 进程。
作为一个对象，它对于 Node.js 应用程序始终是可用的，故无需使用 require()。


# require/exports

CommonJS 模块化方案 require/exports 是为服务器端开发设计的。服务器模块系统同步读取模块文件内容，编译执行后得到模块接口。（Node.js 是 CommonJS 规范的实现）。

# import

在浏览器端，因为其异步加载脚本文件的特性，CommonJS 规范无法正常加载。所以出现了 RequireJS、SeaJS 等（兼容 CommonJS ）为浏览器设计的模块化方案。直到 ES6 规范出现，浏览器才拥有了自己的模块化方案 import/export。

> https://es6.ruanyifeng.com/#docs/module-loader

# AJAX , REST API

XMLHttpRequest()
```js
let xhr = new XMLHttpRequest(); //初始化
xhr.open('GET', '/url', true);  //设置请求方法，请求文件路径，async：true（异步）或 false（同步）
xhr.onload = function () {
                                // 请求结束后,在此处写处理代码
};
xhr.send();                     //发送请求
```
onload和onreadystatechange

'onload'等接口成功返回，'onreadystatechange'只要状态码

（200、404....等等）改变了都会走这个事件，所以使用'onreadystatechange'时候需要做判断

# JOSN

过JSON在Javascript主场作战，可以存储Javascript复合对象，有着xml不可比拟的优势。

# npm install mongodb

```js
const mongodb = require('mongodb')  //导入安装的 mongodb 模块
MongoClient.connect(url,(err,client) => {
    const db = client.db() //保存数据库到 db
    const results = db.collection("serch_contxt") //查询并保存，seach is the context in db
    console.log(results)  //打印查询内容
    db.close();    //操作完毕，需要关闭连接
});
```

