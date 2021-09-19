chmod 777 -R * 将目前目录下的所有文件与子目录皆设为任何人可读取

usermod 选项 用户名
选项:
-c comment 指定一段注释性描述。
-d 目录 指定用户主目录，如果此目录不存在，则同时使用-m选项，可以创建主目录。
-g 用户组 指定用户所属的用户组。
-G 用户组，用户组 指定用户所属的附加组。
-s Shell文件 指定用户的登录Shell。
-u 用户号 指定用户的用户号，如果同时有-o选项，则可以重复使用其他用户的标识号。


mkdir -p dirName 创建目录
-p 确保目录名称存在，不存在的就建一个。


react 单页应用
npx create-react-app my-app

docker run --name nginx-test -v /home/jovyan/jupyter/config/nginx.conf:/etc/nginx/nginx.conf -v /home/jovyan/jupyter/config/conf.d/defalut.conf:/etc/nginx/conf.d/defalut.conf -v /root/jupyter:/usr/share/nginx/html -p 8080:80 -d nginx
docker exec -it -u root id /bin/bash

docker run --name nginx-test -v /home/jovyan/jupyter/config/nginx/conf.d:/etc/nginx/conf.d -v /root/jupyter/my-app:/usr/share/nginx/html -p 8080:80 -d nginx

docker run --name nginx-test -v /home/jovyan/jupyter/config/nginx/conf.d:/etc/nginx/conf.d -v /root/jupyter/my-app:/usr/share/nginx/html -p 8080:80 -d nginx

docker cp nginx-test:/etc/nginx/conf.d /home/jovyan/jupyter/config
docker cp /home/jovyan/jupyter/config/nginx/conf.d/default.conf nginx-test:/etc/nginx/conf.d/default.conf 
/root/www/jupyter/my-app/public
-v /home/jovyan/jupyter/config:/etc/nginx/conf.d
docker cp nginx-test:/etc/nginx /home/jovyan/jupyter/config
nginx -s reload

# nginx docker配置
docker run --name nginx-test -v /home/jovyan/jupyter/config/nginx/conf.d:/etc/nginx/conf.d -v /root/jupyter/my-app:/usr/share/nginx/html -p 8080:80 -d nginx

nginx -s reload


docker run -it --rm   \
-p 8511:8888  \
-p 8521:3000  \
-v /root/jupyter:/home/jovyan/jupyter \
-v /var/run/docker.sock:/var/run/docker.sock \
-v /usr/bin/docker:/usr/bin/docker \
-e JUPYTER_ENABLE_LAB=yes \
jupyter/all-spark-notebook:ubuntu-20.04 


taken : 2c296c19b7c73f0d645bab5368eb78e76e7e1a951b31ba6f




# fork

别人的仓库复制一份到自己的仓库

# git clone：

将github中的仓库克隆到自己本地电脑中

# git fench

拉取

# git diff 

比较不同

# git merge

代码合并

# git pull

相当于连续执行两个命令git fetch然后git merge。所以，pull request的意思就是一个“请求”（request），请对方做一个git fetch拿到request中的代码commits，然后git merge一下到某个分支上。

# pull request

有一个仓库，叫Repo A。你如果要往里贡献代码，首先要Fork这个Repo，于是在你的Github账号下有了一个Repo A2,。然后你在这个A2下工作，Commit，push等。然后你希望原始仓库Repo A合并你的工作，你可以在Github上发起一个Pull Request，意思是请求Repo A的所有者从你的A2合并分支。如果被审核通过并正式合并，这样你就为项目A做贡献了


# git push



# git remote


# git checkout

创建分支和切换分支。

# action.on.schedule

计划的时间运行。 使用 POSIX cron 语法触发工作流
```
on:
  schedule:
    - cron:  '*/15 * * * *'
    
```
# action.on.workflow_dispatch

手动触发工作流。 通过此事件，可以使用 GitHub REST API 或通过选择 GitHub 上存储库中“操作”选项卡中的“运行工作流”按钮来运行工作流。


# action.on.repository_dispatch

Webhook 事件。 此事件可以让你为发生在 GitHub 外部的活动触发工作流，它实际上是对存储库发出一个 HTTP 请求

# action.on.check_run

# node
```bash
    apt install curl
    # Using Ubuntu
    curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
    sudo apt-get install -y nodejs

    # Using Debian, as root
    curl -fsSL https://deb.nodesource.com/setup_16.x | bash -
    apt-get install -y nodejs
```

# jupyter 多行注释

按住alt后光标变为十字形，沿着行标向下拖，光标变得很长，这时shift+3使用#注释多行

# git reset --hard HEAD^

退回上一次commit

# git ls-tree -r master --name-only

# git rm -r --cached .
