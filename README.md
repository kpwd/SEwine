# SEwine
Security-Enhanced Wine ,Set a low permission linux's user to run wine application.
SEwine,设置一个低权限帐号来运行wine,保证系统安全和隐私

# ----------How to use?-----------

# create sandbox(创建一个沙盒,得到沙盒id类似sewine_xxxx)
[tetsai-pc SEwine]# sudo /mnt/Extend/docker/SEwine/create_sandbox.sh  
sandbox username: sewine_1564404833573153535  
 
# run sandbox(运行沙盒,需要指定沙盒id)
[tetsai-pc SEwine]# sudo /mnt/Extend/docker/SEwine/run_sandbox.sh sewine_1564404833573153535  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
kdeinit5: preparing to launch '/usr/lib/kf5/klauncher'  
kdeinit5: Launched KLauncher, pid = 27042, result = 0  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
No DBUS session-bus found. Check if you have started the DBUS server.  
kdeinit5: Communication error with launcher. Exiting!  
"KLauncher could not be reached via D-Bus. Error when calling kdeinit_exec_wait:\nNot connected to D-Bus server\n"  
Don't need password!!  
 
 
# del sandbox(all file will be deleted) (移除沙盒,指定沙盒id,所有文件全部GG,不留痕迹)
[tetsai-pc SEwine]# sudo /mnt/Extend/docker/SEwine/del_sandbox.sh sewine_1564404833573153535  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
kdeinit5: preparing to launch '/usr/lib/kf5/klauncher'  
kdeinit5: Launched KLauncher, pid = 27172, result = 0  
QStandardPaths: XDG_RUNTIME_DIR not set, defaulting to '/tmp/runtime-root'  
No DBUS session-bus found. Check if you have started the DBUS server.  
kdeinit5: Communication error with launcher. Exiting!  
"KLauncher could not be reached via D-Bus. Error when calling kdeinit_exec_wait:\nNot connected to D-Bus server\n"  
Don't need password!!  

userdel: sewine_1564404833573153535 mail spool (/var/spool/mail/sewine_1564404833573153535) not found  
[tetsai-pc SEwine]#   


# Note(说明)
所有操作必须root运行.  
all opration should run in root!  
程序依赖kdesu,dolphin以方便用其它用户运行wine序,如果不是kde环境,可以试着改一下,看看对应的环境有没有类似的  
this application uses "kdesu,dolphin" to run wine as other user,if you aren't KDE,you should edit it to make it available.  
本程序会在home下创建一个console文件夹,文件为:  
this application will create a folder named "console" ,it's files is:  

stop.sh -stop all of the process which end of ".exe" in the sandbox(暂停,冻结这个沙盒里所有的 *.exe 进程  
opration.sh -other file 依赖文件  
kill.sh -kill all of the process which end of ".exe" in the sandbox (杀死这个沙盒里所有的 *.exe 进程  
exit.sh -kill all of the process in the sandbox(退出这个沙盒,清除所有进程  
continue.sh -recover all of the process which end of ".exe" in the sandbox(解除冻结这个沙盒里所有的*.exe 进程  

