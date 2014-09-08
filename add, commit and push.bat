@ECHO OFF
set /p message=Enter commit message:
IF "%message%"=="" GOTO Error
git add --all .
git commit -m "%message%"
git push origin master
GOTO End
:Error
echo No commit message.
:End