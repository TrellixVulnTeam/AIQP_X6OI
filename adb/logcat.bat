@echo off
mode con cols=40 lines=4
color 4f
title �α�����

echo.
echo   �α����� �ð��� %time% �Դϴ�.
echo   �����Ϸ��� â�� ��������.
call %folder%adb -s %ip%:5555 logcat -v threadtime > .\log\logcat\%date%_%ip%.txt
