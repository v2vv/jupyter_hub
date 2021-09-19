# CGI

CGI的英文是（COMMON GATEWAY INTERFACE）公共网关接口，它的作用就是帮助服务器与语言通信，这里就是nginx和php进行通信，因为nginx和php的语言不通，因此需要一个沟通转换的过程，而CGI就是这个沟通的协议。

# webserver

web server可以是nginx，也可以是IIS和apache等http服务器，也可以成为网站服务器或者前端服务器。

web server仅仅是一个HTTP服务的实现，只管收一个请求，然后回复一个相应的响应（通常是一个HTML页面，根据请求的不同，也可以是其它的文件），不管任何逻辑。所有的逻辑处理，都是扔给CGI的。比如用户登录的验证等。

# 解析器

    解析处理返回cgi信息
    编程语言
    服务端语言
    - php
    - python
    - c
    - c++
    - c#(windows)
    - java
    - node.js
    - perl
    
    浏览器（客户端）语言
    -javascript
    
    前端框架
    
    服务端框架
    - django
    - asp.net
    - php
    
    客户端框架
    - vue
    - react

    消息传送框架（get/post）
    - http
    - other

# data
    - sql
    - other
