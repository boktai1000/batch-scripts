set VBoxManageEXE="%ProgramFiles%\Oracle\VirtualBox\VBoxManage.exe"
set ListRunningVMS=%VboxManageEXE% list runningvms
for /f tokens^=2^,4^ delims^=^" %%p in ('%ListRunningVMS%') do %VBoxManageEXE% controlvm %%p savestate

echo 'All VMs initiated savestate poweroff'
