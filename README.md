# server-bash-script
some userful server bash script
#### 各个脚本的功能在脚本里有介绍用法这里只是说一下简单的  
>* --autorun.sh-- 一个监控系统负载来重启一些你的高负载服务，如nginx,mysql,v2ray.的Linux脚本（小内存机器和小白使用吧，配合crontab食用最佳。  
PS：目前只在Debian+lnmp环境测试过，有BUG，提issue，找时间修复。
>* --freemem.sh-- vps内存释放脚本，定时释放内存（我是以buff为准，你可以改成以实际剩余，脚本中有写，自己注释就行）。
>* --freecpu.sh-- vps杀掉指定进程，当某些进程占用CPU过高的时候可以用此脚本监控并且杀掉它（这是暴力解决，不推荐！最好找出问题源头解决）。  
>* --crontab.sh-- 用shell添加 crontab 定时任务  

>**贴图时刻**  


>autorun.sh运行图  
![autorun.sh运行截图](https://github.com/Mr-xn/server-bash-script/blob/master/img/autorun.sh%E8%BF%90%E8%A1%8C%E6%88%AA%E5%9B%BE.png?raw=true)  

>freemem.sh运行截图  
>![freemem.sh运行截图](https://github.com/Mr-xn/server-bash-script/blob/master/img/freemem.sh%E8%BF%90%E8%A1%8C%E6%88%AA%E5%9B%BE.png?raw=true) 

>freecpu.sh运行截图  
![freecpu.sh运行截图](https://raw.githubusercontent.com/Mr-xn/server-bash-script/master/img/freecpu.sh%E8%BF%90%E8%A1%8C%E6%88%AA%E5%9B%BE.png?raw=true)  

>crontab.sh运行截图  
![crontab.sh运行截图](https://github.com/Mr-xn/server-bash-script/blob/master/img/crontab.sh%E8%BF%90%E8%A1%8C%E6%88%AA%E5%9B%BE.png?raw=true)  

#### 此脚本适合小白使用，不懂de到 [博客](https://mrxn.net) 留言 欢迎提issue和push你的!

#### 如果使用过程中 出现以下类似错误提示，请安装 ``dos2unix`` 将从Windows上传的脚本 先转换成Unix格式再运行！  

`` xxxx.sh: line 2: $'\r': command not found ``   

#### 强烈推荐安装 ``dos2unix`` ，使用脚本前先转换！[详细教程](https://mrxn.net/jswz/570.html)<<——  

#### 在 ``Xshell`` 上快捷传输文件助手 ``lrzsz`` [详细教程](https://mrxn.net/Linux/542.html)<<——
