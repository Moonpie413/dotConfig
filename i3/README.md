mint下安装i3
============

安装 `i3` 和 `i3status` 和 `dmenu` 和 `i3lock` 四个包

快捷键
------

* mod + enter: 启动终端
* mod + r: 调整窗口大小 (resize mode)
* mod + d: 搜索并打开
* mod + s: 堆叠布局
* mod + w: 标签布局
* mod + e: 默认布局
* mod + j, k, l, ;: 移动焦点
* mod + 1, 2, 3...: 切换窗口
* mod + shift + q: 关闭当前窗口
* mod + shift + 1, 2, 3: 将当前窗口添加到对应序列上
* mod + shift + c: 重新加载i3
* mod + shift + r: 重启i3
* mod + shift + e: 退出
* 终端输入 `i3lock`: 锁定屏幕

自定义快捷键
------------

自定义快捷键已经在 `.config/i3/config` 中配置

需要安装 `xbacklight` 调整亮度
pactl 中 `set-sink-volum` 选项需要自己用 `pactl list sinks`
列出声卡并选择相应的序号

壁纸
----

安装 feh

```sh
sudo apt install feh
```

在配置文件中添加
```sh
exec always feh --bg-scale /imagePath
```

配置显示器
----------

安装 `arandr`

自动生成 `xrandr` 的显示器配置
视频18分

重命名workspace
---------------

在配置文件中搜索workspace，将1, 2, 3, ...的序号改成需要的名字

**需要重新登录**

`set $workspace1 Terminals`
设置变量，在后面可以通过 `$workspace1` 引用

将应用放在对应的workspace

assgin [class="example"] $workspace1

class参数通过 `xprop` 命令获取

设置字体
--------

下载安装 YosemiteSanFrancisco

安装`lxappearance` 配置默认的GTK字体 (用dmenu打开)

用 `lxappearance` 随意修改配置后会在home生命.gtkrc-2.0文件,修改其中的字体
同时修改 .config/gtk-3.0/settings.ini

使用Rofi替代dmenu
----------------

安装 rofi
安装 compton
添加 `exec_always compton -f` 自带透明效果

自定义状态栏
------------

安装i3blocks
配置文件在i3文件夹下
i3blocks -c /home/wangxh/.config/i3/i3blocks.conf
