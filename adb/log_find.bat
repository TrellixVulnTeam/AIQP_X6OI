@echo off

:inputFIND
cls
set /p f1=ù��° �˻�� �Է��ϼ���. :
IF "%f1%" EQU "" goto inputFIND
set /p f2=�ι�° �˻�� �Է��ϼ���.(�˻�� �����ÿ��� ENTERŰ �Է��ϼ���.) :
IF "%f2%" EQU "" goto inputONE
set /p f3=����° �˻�� �Է��ϼ���.(�˻�� �����ÿ��� ENTERŰ �Է��ϼ���.) :
IF "%f3%" EQU "" goto inputTWO

cls
call adb\adb -s %ip%:5555 logcat -v time | find "%f1%" | find "%f2%" | find "%f3%"
exit

:inputONE
cls
call adb\adb -s %ip%:5555 logcat -v time | find "%f1%"
exit

:inputTWO
cls
call adb\adb -s %ip%:5555 logcat -v time | find "%f1%" | find "%f2%"
exit