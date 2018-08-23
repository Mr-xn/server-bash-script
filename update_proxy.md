###  此shell专门为 [htpwdScan](https://github.com/lijiejie/htpwdScan) 适配 [proxy_pool](https://github.com/jhao104/proxy_pool)

> 将下面的内容保存为update_proxy.sh文件放到htpwdScan目录下面，sh update_proxy.sh执行就可以了，你也可以扔到定时任务里自动执行:alarm_clock: */6 * * * * sh /your/path/to/htpwdScan/update_proxy.sh

```shell
curl 127.0.0.1:5010/get_all/ > proxy.txt
sed -i "s/\[//" proxy.txt
sed -i "s/\]//" proxy.txt
sed -i "s/\"//g" proxy.txt
sed -i '/^\s*$/d' proxy.txt
sed -i 's/^[ ]*//g' proxy.txt
```

- PS：啥都不懂的先Google搜索，不能翻的，可以用我的 [Google搜索](https://g.mrxn.net/) 【仅限搜索学习相关】,充分搜索了再来提问，别一来就问 :x: 类似htpwdScan是干啥的？proxy_pool是干哈的这类。大家时间有限，谢谢!
