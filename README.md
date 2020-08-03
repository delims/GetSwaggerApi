## 自动获取swagger中的API集成到项目中。

1. swagger.txt 中存有swagger.json的URL和获取后需要保存的路径。
2. 把swagger.txt和编译后的GetSwagger可执行程序放在同一目录下
3. 执行 GetSwagger 即可自动集成。
4. swagger.txt 内容如下，可自行替换。


```
本文件以行首前缀判断是路径还是地址。

下面是文件路径，执行程序后会生成两个文件 .h 和 .m 文件。

/Users/delims/repository/project/GetSwagger/GetSwagger/NetworkApi

所有swagger json的请求地址

http://192.168.11.240:55552/swagger/v1/swagger.json
http://192.168.11.240:55554/swagger/v1/swagger.json

```

