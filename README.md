## 运行

### 前期准备

* 安装环境，首先安装JDK（注意JDK版本不能过高，建议为JDK8，否则之后可能出现问题），直接官网下载安装即可，之后设置环境变量，如下图所示

  系统变量点击新建，取名JAVA_HOME，目录为JDK安装目录

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211133413.png)

  再在path中添加以下两条

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211133500.png)

  在cmd页面输入java -version 验证是否设置成功

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211133732.png)

* 安装Dart SDK，官网下载解压即可，然后和JDK类似设置环境变量

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211133910.png)

  ![image-20200211133954638](C:\Users\Nier\AppData\Roaming\Typora\typora-user-images\image-20200211133954638.png)

  命令行输入 dart --version 验证是否设置成功

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211134048.png)

* 安装flutter包，同样是官网下载然后设置环境变量，只需要在path中设置即可

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211134546.png)

* 由于在安装中还需要下载很多资源，所以需要将flutter配置成国内镜像，系统变量中新建以下两个变量即可

  * FLUTTER_STORAGE_BASE_URL: https://storage.flutter-io.cn
  * PUB_HOSTED_URL: https://pub.flutter-io.cn 



### 在Android Studio中运行该项目

* 安装Android Studio具体参考博客 [ https://www.cnblogs.com/gufengchen/p/10991886.html ]( https://www.cnblogs.com/gufengchen/p/10991886.html )

* 打开Android Studio，File -> Setting -> Plugins, 搜索dart、flutter，安装插件即可

* 命令行中输入flutter doctor查看环境是否配置正确

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211135657.png)

* 如果Android toolchain一栏还是感叹号，输入flutter doctor --android-licenses统一

* 之后用Android Studio打开项目，用虚拟设备运行即可



### 在VS Code中运行该项目

* 下载安装vscode

* 安装以下几个插件

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211140743.png)

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211140832.png)

* 在vs code中打开该工程

* 连接自己的手机，安卓手机需要在开发者选项中打开USB调试和USB安装，苹果手机做法参考博客[ https://www.jianshu.com/p/69e1efc2fc55 ]( https://www.jianshu.com/p/69e1efc2fc55 )，连接好后VS Code右下角会有显示

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211141139.png)

* 之后在命令行中输入flutter run即可运行该项目

  ![](https://wnghilin-blog.oss-cn-beijing.aliyuncs.com/20200211141314.png)