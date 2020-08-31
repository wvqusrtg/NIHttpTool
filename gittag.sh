#!/bin/bash

echo "-------------BEGIN 添加tag----------------"

#Verify variable is provided
if [ "$1" = "" ]; then
        echo -e "tag不能为空,请添加..."
        exit 1
fi

tag=$1
#添加标签
echo "-------------step1:开始添加tag:${tag}----------------"
git tag -a "${tag}" -m "${DESCCOMMIT}"
echo "-------------step2:tag:${tag}提交到origin----------------"
git push origin --tags
echo "-------------💐tag:${tag}提交完成----------------"
echo "-------------END 展示所有提交tag----------------"
git tag
