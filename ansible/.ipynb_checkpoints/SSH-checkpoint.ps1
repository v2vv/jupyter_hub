KL3e1gTeiCS0f81Lc2
# 107.173.146.151
# ssh 
echo "更新ssh连接"
ssh-keygen -R $hostip
echo "发送公钥至主机"
ssh-copy-id $hostip
ssh-keygen -R 107.173.146.151
ssh-copy-id 107.173.146.151
ssh root@107.173.146.151
YES
ssh-copy-id -i .ssh/id_rsa.pub  root@107.173.146.15

ssh
ssh-keygen -t rsa -b 4096 -f .ssh/id_rsa-remote-ssh
ssh-copy-id -i .ssh/id_rsa-remote-ssh root@107.173.146.151

#登入服务器
Function vps ($ip,$passwd)
{
    $hostvps=107.173.146.151
    ssh root@ $hostvps

}

vps

$hostvps=107.173.146.151
ssh root@107.173.146.151

# sudo vim /etc/ssh/sshd_config
# RSAAuthentication yes 
# PubkeyAuthentication yes 
# AuthorizedKeysFile .ssh/authorized_keys

ssh-keygen -t rsa
# scp的意思就是 ssh copy
# 需要密码
scp C:\Users\Mr.Stark\.ssh\id_rsa.pub root@122.51.221.67:/root/.ssh/authorized_keys

ssh root@107.173.146.151
echo 'scp C:\Users\Mr.Stark\.ssh\id_rsa.pub root@107.173.146.151:/root/.ssh/authorized_keys' `
'ssh root@107.173.146.151' >yy.txt
cat yy.txt

apt install nginx 

scp C:\Users\Mr.Stark\.ssh\id_rsa.pub root@122.51.221.67:/root/.ssh/authorized_keys
cat ""C:\Users\LvHongYuan\.ssh\id_rsa"" | ssh $args $userAtMachine "umask 077; test -d .ssh || mkdir .ssh ; cat >> .ssh/authorized_keys
