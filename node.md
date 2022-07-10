
# const
const声明创建一个值的只读引用。但这并不意味着它所持有的值是不可变的，只是变量标识符不能重新分配。例如，在引用内容是对象的情况下，这意味着可以改变对象的内容（例如，其参数）
![image](https://github.com/v2vv/jupyter_hub/raw/master/images/Sat_Jul_09_2022_1657374618618.png)
# npm script

1. npm 脚本的原理非常简单。每当执行npm run，就会自动新建一个 Shell，在这个 Shell 里面执行指定的脚本命令。因此，只要是 Shell（一般是 Bash）可以运行的命令，就可以写在 npm 脚本里面。

2. npm 脚本的退出码，也遵守 Shell 脚本规则。如果退出码不是0，npm 就认为这个脚本执行失败。

# 包管理器yarn

# node.js

由于 JavaScript 发展的速度非常快，但是浏览器发展得慢一些，并且用户的升级速度也慢一些，因此有时在 web 上，不得不使用较旧的 JavaScript / ECMAScript 版本。

可以使用 Babel 将代码转换为与 ES5 兼容的代码，再交付给浏览器，但是在 Node.js 中，则不需要这样做。

另一个区别是 Node.js 使用 CommonJS 模块系统，而在浏览器中，则还正在实现 ES 模块标准。

在实践中，这意味着在 Node.js 中使用 require()，而在浏览器中则使用 import。

# V8引擎
V8 是为 Google Chrome 提供支持的 JavaScript 引擎的名称。 当使用 Chrome 进行浏览时，它负责处理并执行 JavaScript。
V8 提供了执行 JavaScript 的运行时环境。 DOM 和其他 Web 平台 API 则由浏览器提供。
V8 于 2009 年被选为为 Node.js 提供支持的引擎，并且随着 Node.js 的爆炸性发展，V8 成为了现在为大量的服务器端代码（使用 JavaScript 编写）提供支持的引擎。
JavaScript 是由 V8 在其内部编译的，使用了即时（JIT）编译以加快执行速度。编译 JavaScript 非常有意义，因为尽管可能需要多花费一点时间来为 JavaScript 做准备，但是一旦完成，则它会比纯解释型的代码具有更高的性能。

![image](https://github.com/v2vv/jupyter_hub/raw/master/images/Sun_Jul_10_2022_1657454192915.png)