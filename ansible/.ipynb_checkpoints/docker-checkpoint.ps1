ssh root@107.173.146.151 << command
# step 1: 安装必要的一些系统工具
apt-get update
apt-get -y install apt-transport-https ca-certificates curl software-properties-common
# step 2: 安装GPG证书
apt-get install gnupg << delimiter
Y
delimiter
curl -fsSL http://mirrors.aliyun.com/docker-ce/linux/debian/gpg | apt-key add -
# Step 3: 写入软件源信息
add-apt-repository "deb [arch=amd64] http://mirrors.aliyun.com/docker-ce/linux/debian $(lsb_release -cs) stable"
# Step 4: 更新并安装 Docker-CE
apt-get -y update
apt-get  install docker-ce
pip show paramiko
command

ssh -t root@107.173.146.151 "ls;echo hello;echo done!"

ssh -t root@107.173.146.151 "`
expect`
"
expect
ssh << 
hh.exe
hee


ssh root@122.51.221.67


