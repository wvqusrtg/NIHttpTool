echo '---💐输入 1 or 2 的数字选择要执行的操作【1-git add commit push】/【2-git tag】💐---'
echo '---💐你输入的数字为:'
read aNum
case $aNum in
    1)  echo '你选择了 1'
        echo '请输入git commit提交描述的内容:'
        read desc
        echo "---你刚输入描述内容为:$desc"

        echo "-------------BEGIN 全量提交代码到gitee仓库----------------"
        #Verify variable is provided
        if [ "$desc" = "" ]; then
                echo -e "提交描述内容不能为空,请添加..."
                exit 1
        fi

        echo "-------------step1:本路径下全量代码添加到提交队列----------------"
        git add *
        echo "-------------step2:添加本次提交描述----------------"
        echo "${desc}"
        git commit -a -m "${desc}"
        echo "-------------step3:提交到远程 origin master分支----------------"
        git push -u origin master

        echo "-------------💐END 全量提交完成----------------"

        echo "-------------展示提交日志----------------"
        git log
    ;;
    2)  echo '你选择了 2'
        echo '请输入tag:'
        read tag
        echo "---$tag"
        echo '请输入本次提交tag的描述'        
        read DESCCOMMIT
        echo '---$DESCCOMMIT'
        echo "-------------BEGIN 添加tag----------------"

        #Verify variable is provided
        if [ "$tag" = "" ]; then
                echo -e "tag不能为空,请添加..."
                exit 1
        fi

        #添加标签
        echo "-------------step1:开始添加tag:${tag}----------------"
        git tag -a "${tag}" -m "${DESCCOMMIT}"
        echo "-------------step2:tag:${tag}提交到origin----------------"
        git push origin --tags
        echo "-------------💐tag:${tag}提交完成----------------"
        echo "-------------END 展示所有提交tag----------------"
        git tag
    ;;    
    *)  echo '你没有输入 1 or 2 的数字.'
    ;;
esac