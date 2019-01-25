#变量 
用赋值符号（=）为变量赋值，引用变量使用 $变量名，注意：定义变量的时候等号两边没有空格
局部变量：只在创建他们的shell脚本中使用
环境变量：可以在在创建他们的shell及其派生的任意子进程中使用，有些是用户创建的，有些是专用的shell变量

常见的系统变量：
$0: 当前程序的名称
$n：当前程序的第n个参数，n=1,2,..9
$*: 当前程序的所有的参数（不包括程序本身）
$#: 当前程序的参数个数（不包括程序本身）
$?: 命令或者程序执行往后的状态，一般返回0表示成功
$UID:当前用户的id
$PWD:当前所在的目录

#if
if条件判断语句
if（表达式）;then
	语句1
else
	语句2
fi

逻辑运算符解析：
-f 判断文件是否存在： if[-f filename]
-d 判断目录是否存在
-eq 等于
-ne 不等于
-lt 小于
-gt 大于
-le 小于等于
-ge 大于等于
-a 双方都成立(and)
-o 单方成立(or)
-z 空字符串

# for 循环

for 变量 in 字符串
	do
		语句1
	done
# until 循环
until 条件
do 
	action
done