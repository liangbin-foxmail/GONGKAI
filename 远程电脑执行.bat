@echo off
REM ����ZIP�ļ���ʹ��PowerShell��
powershell -Command "(New-Object System.Net.WebClient).DownloadFile('https://github.com/liangbin-foxmail/gongkai/raw/main/dist.zip', 'dist.zip')"

REM ��������Ƿ�ɹ�
if not exist "dist.zip" (
    echo ����ʧ�ܣ������������ӣ�
    pause
    exit /b 1
)

REM ��ѹ�������ZIP����ǰĿ¼����7-Zip�Ѱ�װ��·����ȷ��
"C:\Program Files\7-Zip\7z.exe" x -pAa123456 -y "dist.zip" -o"%CD%"

REM ����ѹ�Ƿ�ɹ���ֱ�Ӽ�鵱ǰĿ¼�µ�Ŀ���ļ���
if not exist "msedgedriver.exe" (
    echo ��ѹʧ�ܻ��ļ������ڣ�
    pause
    exit /b 1
)

REM ����Ŀ����򣨵�ǰĿ¼�µ��ļ���
echo ��������github�Զ������˺�-seleium.exe...
start "" "github-autocreat-seleium.exe"

echo ������ɣ�
pause