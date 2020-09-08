#!/bin/bash

echo "-------------BEGIN 全量提交代码到gitee仓库----------------"

#Verify variable is provided
if [ "$1" = "" ]; then
        echo -e "提交描述内容不能为空,请添加..."
        exit 1
fi

DESCCOMMIT=$1

echo "-------------step1:本路径下全量代码添加到提交队列----------------"
git add *
echo "-------------step2:添加本次提交描述----------------"
echo "${DESCCOMMIT}"
git commit -a -m "${DESCCOMMIT}"
echo "-------------step3:提交到远程 origin master分支----------------"
git push -u origin master

echo "-------------💐END 全量提交完成----------------"

echo "-------------展示提交日志----------------"
git log
