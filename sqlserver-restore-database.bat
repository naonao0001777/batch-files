@set /P SERVER_NAME="input the database server name>>>>"
@set /P LOGIN_USER="input a login user>>>>"
@set /P PASSWERD="input a passwerd>>>>"
@set /P RESTORE_BAK="input the path .bak file for restore"
@set LOG_PATH=.\restore.log

@echo ---------------------
@echo �ڑ���F%SERVER_PATH%
@echo ���O�C���F%LOGIN_USER%
@echo �p�X���[�h�F%PASSWERD%
@echo bak�t�@�C�����F%RESTORE_BAK%
@echo ---------------------
pause

@echo make a database offline...
sqlcmd -S %SERVER_PATH% -U %LOGIN_USER% -P %PASSWERD% -Q "alter database %SERVER_NAME% set offline with rollback immediate" >> %LOG_PATH%

@echo restore a database...
sqlcmd -S %SERVER_PATH% -U %LOGIN_USER% -P %PASSWERD% -Q "restore database %SERVER_NAME% from disk='%RESTORE_BAK%'" >> %LOG_PATH%

pause