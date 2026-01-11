echo off
:o
color 4F
title 何昱轩dos系统工具箱
cls
echo 警告,系统组件缺失会导致无法运行
echo 警告,版权归何昱轩所有,未经许可请勿擅自复制,否则需承担相应的法律责任
echo 何昱轩dos系统工具箱 2021-2022
echo about hyx win help HWH
set /P choice= 　　如同意以上条款，请输入Y  如不同意以上条款，请输入N  
  if "%choice%"=="Y" goto :1
  if "%choice%"=="y" goto :1
  if "%choice%"=="N" exit
  if "%choice%"=="n" exit
goto :o
color 2F
cls
:1
color 2F
title 何昱轩dos系统工具箱
cls
echo 键入"0"打开关于
echo e=退出 
echo 1=修复检查硬盘
echo 2=手电筒 
echo 3=磁盘清理 
echo 4=重启计算机 
echo 5=关闭计算机 
echo 6=修改密码 
echo 7=查看计算机配置 
echo 8=激活电脑
echo 9=关闭vbs脚本(强制停止VBScript病毒运行)
echo 10=关闭bat脚本(强制停止Batch病毒运行)
echo 11=重启explorer.exe
echo 12=打开命令提示符 
echo 13=打开任务管理器
echo 14=打开设置
echo 15=打开控制面板
echo 16=打开计算机管理
echo 17=打开注册表编辑器
echo 18=打开文件资源管理器
echo 19=修复系统
echo 20=测试网速
set /P choice= 　　　　　请选择功能:   
  (
  if "%choice%"=="" goto :l
  if "%choice%"=="1" goto :a
  if "%choice%"=="2" goto :b
  if "%choice%"=="3" cleanmgr
  if "%choice%"=="4" shutdown -t 1 /g /f
  if "%choice%"=="5" shutdown /p /f
  if "%choice%"=="6" goto :c
  if "%choice%"=="12" start cmd
  if "%choice%"=="13" taskmgr
  if "%choice%"=="18" explorer
  if "%choice%"=="15" control
  if "%choice%"=="16" compmgmt.msc
  if "%choice%"=="17" regedit
  if "%choice%"=="11" taskkill /f /im explorer.exe & start explorer & cls & goto :1
  if "%choice%"=="7" dxdiag
  if "%choice%"=="0" goto :e
  if "%choice%"=="14" start ms-settings:wheel
  if "%choice%"=="8" goto :d
  if "%choice%"=="20" title 测试网速 & cls & ping 8.8.8.8 & echo 网络正常值大约为100sm 请查看:如请求超时,则网络出现某些故障,请手动排除 如超过100sm 则网络卡顿 & pause & goto :1
  if "%choice%"=="9" taskkill /F /T /im  wscript.exe
  if "%choice%"=="10"  echo 警告,此功能会将此程序与病毒一起关闭 & set /P a= & taskkill /F /T /im  cmd.exe
  if "%choice%"=="19" cls & title 修复系统 & Dism /Online /Cleanup-Image /ScanHealth & cls & Dism /Online /Cleanup-Image /CheckHealth & cls & DISM /Online /Cleanup-image /RestoreHealth & cls & goto :1
  if "%choice%"=="e" exit
)
goto :1
:a
cls
title 检查修复硬盘
set /P 修复=请键入需修复硬盘盘符:
chkdsk %修复%: /f
set /P a=
cls
goto 1
:b
title 手电筒
color 07
cls
set /P choice= 　　　　　o开 t关 e退出
  if "%choice%"=="o" color F7
  if "%choice%"=="t" color 07
  if "%choice%"=="e" goto 1
set /P a=
cls
goto b
:c
color 40
title 修改密码
cls
echo 当前用户列表
net user
set /P ctrl=请键入密码(如遇安全防护软件提示,请点击"允许操作"):
net user %username% "%ctrl%"
cls
echo 修改完毕
set /P a=
cls
goto :1
:d
title 激活电脑
color 9F
cls
set /P choice= 　　　　　确定激活?(y/n)
  (
  if "%choice%"=="" goto :1
  if "%choice%"=="n" goto :1
  if "%choice%"=="N" goto :1
  if "%choice%"=="y" echo 正在激活
  if "%choice%"=="Y" echo 正在激活
  )
slmgr /ipk VK7JG-NPHTM-C97JM-9MPGT-3V66T
cls
slmgr /skms kms.xspace.in
cls
slmgr /ato
cls
echo 激活成功
set /P a=
cls
goto :1
:e
cls
title 关于界面
cls
echo 此软件版本号 :3.6.0
echo 何昱轩dos系统工具箱 2021-2022 
echo hyx win help HWH
set /P a=
goto :1
:l
set /P a=
goto :1
cls

