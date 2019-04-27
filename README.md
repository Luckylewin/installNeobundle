# 说明
此 shell 用于安装 neobundle 插件管理器，以及常用插件
- neobundle 插件管理器
- vim-airline 底部状态增强插件
- nginx.vim nginx 配置文件高亮插件
- nerdtree  目录树显示插件
- vim-airline-themes 底部状态主题

# 安装方法
chmod u+x install.sh
./install.sh

# 修改主题颜色
|颜色代号|说明|是否推荐|
|:----    |:---|-----|
|murmur|蓝,橙|推荐|
|jellybeans|黑灰|推荐|
|light|浅亮蓝,红,银|推荐|
|luna|蓝绿色|推荐|
|behelit  |浅蓝 ||
|bubblegum|暗绿粉||
|hybridline|绿,棕 ||
|kalisi|暗黄,绿||
|molokai|棕,蓝,橙||
|papercolor|银,浅蓝||
|powerlineish|暗黄,橙||
|term|绿,蓝||
|tomorrow|紫,绿|||

```
vim ~./vimrc
let g:airline_theme='luna' 加到 airline options 下面
```


![](https://img-blog.csdn.net/20170416001750114?watermark/2/text/aHR0cDovL2Jsb2cuY3Nkbi5uZXQvcXFfMzQ4NTM4NzQ=/font/5a6L5L2T/fontsize/400/fill/I0JBQkFCMA==/dissolve/70/gravity/SouthEast)
