# 变量 
用赋值符号`=`为变量赋值，注意：定义变量的时候等号两边没有空格，变量类型只有字符串类型     
eg:
```
myname='xuechao' # 字符串类型，不解析任何字符
address="adbac" # 双引号内部会解析$和反斜杠特殊字符
date_cmd=`date` # 反引号执行系统命令
```

## 变量使用
`$变量名`,【变量名外面的花括号是可选的，为了帮助解释器识别变量的边界】

## 环境变量
定义：在操作系统中用来指定操作系统运行环境的一些参数

### 常见的环境变量
`PATH`:系统路径   
`HOME`:当前用户的家目录   
`HISTSIZE`:保存你是命令记录的条数     
`LOGNAME`:当前用户的登录名    
`HOSTNAME`:主机名称  
`SHELL`:当前用户使用的哪种shell     
`LANG/LANGUGE`:语言有关的环境变量   
`MAIL`:当前用户邮件存放的目录   
### 查看环境变量：
`env`（显示所有的环境变量）     
`echo $PATH`(查看当前的命令)

## 局部变量
+ 1、shell脚本中用户自定义的变量；
+ 2、用户登录的shell定义的变量，重新登录后该变量消失

## 系统变量
shell一开始就定义的变量，用户只能根据shell定义来使用，不能重新定义他
### 常见的系统变量：
`$0`: 当前程序的名称    
`$n`：当前程序的第n个参数，n=1,2,..9    
`$*`: 当前程序的所有的参数（不包括程序本身）    
`$#`: 当前程序的参数个数（不包括程序本身）  
`$?`: 命令或者程序执行往后的状态，一般返回0表示成功     
`$!`: 后台运行的最后一个进程号  
`$$`: 当前进程的进程号  
`$UID`:当前用户的id     
`$PWD`:当前所在的目录

# 输入输出：
## echo
发送数据到标准的输出设备，数据采用字符串方式
### 两个重要参数
`-e` :识别输出内容里的转义序列  
`-n` :忽略结尾的换行

## printf
输出变量和内容，默认没有换行，支持格式输出

## read
读取标准输入设备的下一行，标准输入中新的一行到换行符前的所有字符串都会被读取，并赋值给对于的变量
`read -p "提示信息：" 变量名`

## << 
重定向符，重定向脚本文件中的一行作为一个命令的输入  
格式
```
command << delimiter
    document
delimiter
```
可以自定义定界符，定界符后的单词作为各行结束的定界符，，结束时的定界符一定顶格写

# 运算操作
## let
执行整数相关的运算，运算结果也只能保存整数  
`let 变量名=变量1 (+,-,*,/,%) 变量1`

## expr
算数运算时，只能进行整数类型的运算，不能保存小数结果，此外还可以进行字符串操作  
`expr experession1 操作符 experession2`     
操作符前必须加‘\’进行转义，并且操作符和两个expression之间必须有空格

## bc
进行浮点运算，常用在管道中  
```
variable = `echo "OPTIONS; OPERRATIONS" | bc` 
```
scale用来指定输出小数的位数     
# 字符串操作
输出字符串长度 ：`expr length $str`     
取子串的操作:   `expr substr $string $postion $length` (下标从1开始)    
`echo ${string:$pos:$length}` （下标从0开始）   
字符串连接：`str3="${str1}$str2"`       
字符串替换：`echo ${string/you/YOU}` # 替换一次     
`echo ${string//you/YOU}` # 全部替换

# test比较
可以对两个值进行比较，如果比较成功则返回0，否则为非0    
语法：`test value1 -option value2`

## 逻辑比较
`-eq` 等于  
`-ne` 不等于    
`-lt` 小于  
`-gt` 大于  
`-le` 小于等于  
`-ge` 大于等于  
`-a` 逻辑与(and)    
`-o` 逻辑或(or)     
`！` 逻辑非 
## 字符串比较
`-z` 判断是否是空字符串     
`= `等于字符串  
`！=` 不等于字符串  
## 文件比较：
`-f` 判断文件是否存在   
`-d` 判断目录是否存在   
`-s` :文件不为空    
`-r`: 文件可读  
`-w`:文件可写   
`-x`:文件可执行     
`-h`:文件是一个符号连接     
`-c`:文件是一个字符设备     
`-b`:文件是一个块文件       

#if
if条件判断语句
```
if（表达式）
then
    语句1
elif
then
    语句2
else
	语句3
fi
```

# case 选择语句
```
case $arg in
    pattern1)
    语句1
    ;;
    pattern2)
    语句2
    ;;
    *)
    语句3
    ;;
esac
```

# select 选择语句
select 一般用于选择菜单的创建，配合PS3做菜单的打印输出
```
select i in "选项..."
do
    语句
done
```

# for 循环
## 遍历或列表循环
```
for 变量 in 字符串
	do
		语句1
	done
```
## c语言风格的循环
```
for ((expr1;expr2;expr3))
do
    语句
done
```

# while 循环
```
while 条件语句
do 
	语句1
done
```

# until 循环:满足条件才退出，否则执行action
```
until 条件
do 
	action
done
```


# break和continue
break:退出当前循环并将控制权传递到本循环后面的第一个命令    
continue:忽略本次循环的剩余命令，将控制权交给循环的顶部     

# 函数
将一组命令集或语句形成一个可用块，这些语句块就称为函数
格式：
```
function 函数名(){ # function可以省略，（）内部不带任何参数，一个脚本中函数名唯一
	命令1
	命令2
}
```
向函数传递参数就像在一般脚本中使用特殊变量$1，$2...$9一样，函数取得所传参数后，最好先在函数内部重新设置变量保存所传参数

#文件包含
`. 空格 文件名`

# 数组
把具有相同类型的若干变量按照有序的形式组织起来，这些按序排列的同类数据元素的集合就称为数组      
## 定义：
`数组名=（元素1 元素2 元素3）`    
## 操作：
定义一个数组：myarray=(1 2 3 4)     
读取数组的某一个元素： `echo ${myarray[下标]}` # 数组名必须使用{} 括起来，下标从0开始     
数组元素赋值： `myarray[下标]=xx`     
显示数组的所有元素：`echo ${myarray[*]}`     
获取数组长度： `echo ${#array[@]}` 或者 `echo ${#array[*]}`     
删除一个数组元素： `unset myarray[下标]`      
删除整个数组：`unset 数组名`      
连接：用`（）`将多个数组连接在一起，`（）`中各个数组用空格隔开      
追加：`+=`