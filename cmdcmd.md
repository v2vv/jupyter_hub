# cmd 语法
```cmd
REM REM注释 ::可见输出注释

REM 关闭命令输出
@echo off  
set "var1=some hopefully not important string"
echo call myDosFunc
call:myDosFunc 13 14
echo return myDosFunc: %var1%
echo %resVal%
@pause
 goto:eof
 
::---------------------------------------------------------------------
::--内部関数定義区
::---------------------------------------------------------------------
 
REM 定义标签
:myDosFunc
echo hi myDosFunc!!!
::采用%1~%9来取参数。%0,表示批处理文件本身
echo %~1 %~2
::没有函数返回值定义。可以通过全局变量传递返回值
set a=1
set /a res=%~1+%~2
set "var1=%~1+%~2=%res%"
set resVal=res is %res%
REM 
goto:eof
```