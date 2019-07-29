# SEwine
Security-Enhanced Wine ,Set a low permission linux's user to run wine application.

# ----------How to use?-----------

# create sandbox
[tetsai-pc SEwine]# /mnt/Extend/docker/SEwine/create_sandbox.sh  
sandbox username: sewine_1564404833573153535 
 
# run sandbox
[tetsai-pc SEwine]# /mnt/Extend/docker/SEwine/run_sandbox.sh sewine_1564404833573153535 
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
 
 
# del sandbox(all file will be deleted) 
[tetsai-pc SEwine]# /mnt/Extend/docker/SEwine/del_sandbox.sh sewine_1564404833573153535 
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

