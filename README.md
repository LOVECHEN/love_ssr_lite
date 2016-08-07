#install

安装方法


#Sync script
git clone https://github.com/LOVEChen/love_ssr_lite.git

#Download the docker images
docker pull lovechen/love_ssr_lite

#modify the password etc.(don't change the port)
vi conf/config.sh

change "your_password" with any strings you want

to launch this, do command:

sh startd.sh

also you can modify port and config in startd.sh


if you want do something with this,do command:

sh goto.sh


if you want kill the process,do command:

sh killall.sh


HAVE FUN!
