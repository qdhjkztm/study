#!/bin/bash
rootPath=/usr/local/myAll/study
outputFilePath=/usr/local/myAll/output
if [ $1 == "c" ] ;then
        echo "进入c文件夹"
        cd $rootPath/c/release/
        echo "清除可能存在的编译"
        make clean
        echo "开始编译了"
        make
        echo "结束编译"
        echo "进入编译后的文件夹"
        cd $outputFilePath/c
        echo "开始执行" 
        ./main
elif [ $1 == "h" ] ;then
        echo "进入汇编文件夹"
        cd $rootPath/huibian
        for dir in `ls`
        do
                if [ $dir == $2 ] ; then
                        echo "开始进入：${dir}"
                        cd $dir
                        echo '开始清理'
                        make clean
                        echo '开始编译'
                        make
                        echo '结束编译'
                fi
        done

        echo "进入编译后的文件夹"
        cd $outputFilePath/huibian
        echo "开始执行"
        ./main
elif [ $1 == "o" ] ;then
        echo "进入os文件夹"
        cd $rootPath/os
        for dir in `ls`
        do
                if [ $dir == $2 ];then
                        echo "开始进入：${dir}"
                        cd $dir

                        echo '开始清理'
                        make clean
                        echo '开始编译'
                        make
                        echo '结束编译'
                fi
        done
fi