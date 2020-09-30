#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 源代码提交到 master 分支
git add .

git commit -m $1

git pull

git push

# 生成静态文件
npm run docs:build

# 进入生成的dist文件夹
cd docs/.vuepress/dist

git init
git add -A
git commit -m $1 # 提交到历史区，$1 为运行 sh 时的第一个参数

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:mumu-evanchen/vuepress-blog.git master

# 如果发布到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mumu-evanchen/vuepress-blog.git master:gh-pages

# 将 dist 文件提交到 gh-pages 分支
# git subtree push --prefix dist origin gh-pages

# 退出命令
cd -
