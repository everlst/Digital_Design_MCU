# Digital_Design_MCU

# git 相关命令：

## 克隆仓库

`git clone https://github.com/everlst/Digital_Design_MCU.git`

## 查看分支

`git branch`: 列出本地已经存在的分支，并且当前分支会用\*标记

## 切换分支

`git checkout 分支名称`

## 提交代码-注意不要提交到 main

`git pull`：拉取本地至最新

`git add .`：将所有文件添加至缓存

`git commit -m "提交说明"`：填写提交说明

`git push origin 当前分支名`：推送代码至仓库

# 注意事项

git 如何把 master 上的代码，合并到自己的分支:

## 1.切换到主分支 （main）

`git checkout main`

## 2.拉取主分支的代码

`git pull`

## 3.再切换到自己的分支

`git checkout 分支名称`

## 4.把主分支的代码 merge 合并到自己的分支上面

`git merge master`

## 5.使用上传命令 push

`git push origin 自己的分支`
