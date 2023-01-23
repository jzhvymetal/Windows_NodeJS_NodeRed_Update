SET DIR_SE_IIoT=C:\Program Files (x86)\Schneider Electric\IIoT\node
SET DIR_SE_AOA=C:\Program Files (x86)\Schneider Electric\EcoStruxure Augmented Operator Advisor\node-red
SET DIR_SE_AOA_32=C:\Program Files\Schneider Electric\EcoStruxure Augmented Operator Advisor\node-red
SET DIR_EXT_NODEJS=C:\node-red
:: *****FIND CONNECTION:  SYS_PROXY=AUTO 
:: *****NO PROXY       :  SYS_PROXY=DIRECT 
:: *****France         :  SYS_PROXY=http://gateway.schneider.zscaler.net:80/
:: *****Germany        :  SYS_PROXY=http://force-proxy-eur.pac.schneider-electric.com:80
:: *****North America  :  SYS_PROXY=http://gateway.schneider.zscaler.net:9480/
:: *****	 	          SYS_PROXY=http://gateway.zscaler.ne:80/
:: *****APAC           :  SYS_PROXY=http://gateway.schneider.zscaler.net:9480/
:: *****ZSCALER        :  SYS_PROXY=http://127.0.0.1:9000
SET SYS_PROXY=DIRECT
:: VBS PATH THAT ALLOWS EXECUTION OF VBS SCRIPTS.  USED FOR UNZIPPING AND DOWNLOADING IN WINDOWS.  SUBROUTINE :UnZipFile, WGET
SET VBS_SAFE_PATH=C:\Schneider\ScriptingPath
::*****NODEJS_VER=0  Do not update
::*****NODEJS_VER=-1 will install latest version. 
::*****NODEJS_VER=10  will install latest major version. NodeJS 10 was tested with SE_MODBUS
::*****NODEJS_VER=10.15.0  will install exact version. 
::*****SE_MODBUS and SEMachineAdvisor was Tested with NodeJS 10, 13.8.0, node-red-contrib-modbus will not install unless 12 then upgraded.
SET NODEJS_VER=12
:: *****NODERED_VER=0  Do not update
:: *****NODERED_VER=-1 will install latest version
:: *****NODERED_VER=0.20.* will install 20 latest version. 
::*****SE_MODBUS and SEMachineAdvisor was Tested with NodeJS 0.20.*, 1.0.3
SET NODERED_VER=-1
:: ***** NODE_JS_BACKUP=1 will create backup of the NodeJs folder with date/time stamp
SET NODE_JS_BACKUP=1
::***** NODEJS_NEW_INSTALL=1 will create new install if current install not found in NODEJS_DIR
SET NODEJS_NEW_INSTALL=1
::***** NODEJS_FORCE_UPDATE=1 will still update if installed version matches NODEJS_VER
SET NODEJS_FORCE_UPDATE=1
::***** Will create a Symbloic folder to NodeJs Modbules.  Used for SE IIot
SET OPT_LINK_NODE_MODULES_DIR=1
::***** ON new install  AUTO:Discover OS x86:NODEJS_INSTALLED_OS 64bit:NODEJS_INSTALLED_OS=x64
SET NODEJS_INSTALLED_OS=AUTO
::***** Name for Symbloic folder used during install 
SET NODEJS_SYM_LINK=C:\temp_NODEJS
::*****GIT_VER used for installing some nodes. Will also install curl 
::*****GIT_VER==0  Do not update/install
::*****GIT_VER=-1 will install latest version. 
::*****GIT_VER=2.25.1 will install exact version. 
SET GIT_VER=-1
:: *****NODE_VERSION_{NODEJS_NODE_NAME}=0  Do not update/install
:: *****NODE_VERSION_{NODEJS_NODE_NAME}=-1 will install latest version
:: *****NODE_VERSION_{NODEJS_NODE_NAME}=2.* will install 2 latest version. 
:: *****NODE_VERSION_{NODEJS_NODE_NAME}=2.5.0 working Nodered >=1.0.2.*
:: *****
:: *****Can add additional by adding NODE_VERSION_{NODEJS_NODE_NAME}=VERSION
SET NODE_VERSION_node-red-contrib-modbus=-1
SET NODE_VERSION_node-red-contrib-iiot-opcua=0
SET NODE_VERSION_node-red-contrib-opcua=0
SET NODE_VERSION_node-red-dashboard=0
SET NODE_VERSION_node-red-contrib-cip-ethernet-ip=0
SET NODE_VERSION_node-red-contrib-s7=0
:: Required for install/compile some nodes
SET NODE_VERSION_node-gyp=0
:: *****windows-build-toolss Used for building native windows nodejs components.  NEEDS about ~3GB for install disable if using prebuild.
:: *****windows-build-toolss_INSTALL=0  Do not update
:: *****windows-build-toolss_INSTALL=-1 will install latest version
:: *****windows-build-toolss_INSTALL=4.* will install 4 latest version. 
:: *****windows-build-toolss_INSTALL=4.0.0 working NodeJs 13
SET windows_build_tools_VER=0
::Install NSSM-NSSM - the Non-Sucking Service Manager
::NODERED_SERVICE_INSTALL=0 Do not install service
::NODERED_SERVICE_INSTALL=1 Install NSSM Node-Red Service
SET NODERED_SERVICE_INSTALL=1
SET NODERED_SERVICE_NAME=Node-RED
:: Installs node SE_Modbus if ZIP is in the working direcotry of script
:: Modify setting below if version and path change within the zip
:: Additional ZIP installs can be added by copy and pasting and chaning the SE_MODBUS to something unique
SET ZIP_INSTALL_NAME_SE_Modbus=0
SET ZIP_INSTALL_FILE_SE_Modbus=Modbus_V3.0.0_Offline.zip
SET ZIP_INSTALL_PW32_SE_Modbus=\Modbus_V3.0.0_Offline\files\windows-v10\win-32\se-node-red-modbus
SET ZIP_INSTALL_PW64_SE_Modbus=\Modbus_V3.0.0_Offline\files\windows-v10\win-64\se-node-red-modbus
:: Installs node SE_Machine_Advisor if ZIP is in the working direcotry of script
:: Modify setting below if version and path change within the zip
SET ZIP_INSTALL_NAME_SE_Machine_Advisor=0
SET ZIP_INSTALL_FILE_SE_Machine_Advisor=Machine_Advisor_V2.0.0_Offline.zip
SET ZIP_INSTALL_PW32_SE_Machine_Advisor=\Machine_Advisor_V2.0.0_Offline\files\se-node-red-machine_advisor
SET ZIP_INSTALL_PW64_SE_Machine_Advisor=\Machine_Advisor_V2.0.0_Offline\files\se-node-red-machine_advisor
:: Installs node SE_Aveva-Insight if ZIP is in the working direcotry of script
:: Modify setting below if version and path change within the zip
SET ZIP_INSTALL_NAME_SE_Aveva-Insight=0
SET ZIP_INSTALL_FILE_SE_Aveva-Insight=Aveva-Insight_V2.0.0_Offline.zip
SET ZIP_INSTALL_PW32_SE_Aveva-Insight=\Aveva-Insight_V2.0.0_Offline\files\se-node-red-aveva_insight
SET ZIP_INSTALL_PW64_SE_Aveva-Insight=\Aveva-Insight_V2.0.0_Offline\files\se-node-red-aveva_insight
:: Installs node SE_Harmony_Hub if ZIP is in the working direcotry of script
:: Modify setting below if version and path change within the zip
SET ZIP_INSTALL_NAME_SE_Harmony_Hub=0
SET ZIP_INSTALL_FILE_SE_Harmony_Hub=Harmony_Hub_V1.0.0_Offline.zip
SET ZIP_INSTALL_PW32_SE_Harmony_Hub=\Harmony_Hub_V1.0.0_Offline\files\windows-v10\win-32\se-node-red-harmony_hub
SET ZIP_INSTALL_PW64_SE_Harmony_Hub=\Harmony_Hub_V1.0.0_Offline\files\windows-v10\win-64\se-node-red-harmony_hub
:: Installs node node-red-augmented-operator if ZIP is in the working direcotry of script
:: Modify setting below if version and path change within the zip
SET ZIP_INSTALL_NAME_SE_AOA=0
SET ZIP_INSTALL_FILE_SE_AOA=node-red-augmented-operator.zip
SET ZIP_INSTALL_PW32_SE_AOA=\node-red-augmented-operator
SET ZIP_INSTALL_PW64_SE_AOA=\node-red-augmented-operator
::****************START OF SCRIPT DO NOT MODIFY**********************************************
@ECHO OFF
SETLOCAL EnableDelayedExpansion
CLS

CALL :CHECK_RUN_ADMIN
CALL :UPDATE_SE_IIoT
CALL :UPDATE_SE_AOA
CALL :UPDATE_EXT
GOTO :EXIT_FINAL

:UpdateZipPalettes
for /f "delims== tokens=1,2" %%a in ('set ^| findstr /i / "ZIP_INSTALL_NAME_"') do (
		SET ZIP_SUB_VALUE=%%b  
		SET ZIP_SUB_NAME=%%a	
		SET ZIP_SUB_NAME=!ZIP_SUB_NAME:ZIP_INSTALL_NAME_=!
		Call :UpdateZipPalette !ZIP_SUB_NAME! !ZIP_SUB_VALUE!
	)
		
SET ZIP_SUB_VALUE=	
SET ZIP_SUB_NAME=
GOTO :EOF

:UpdateZipPalette <NAME> <VALUE>
IF "%2%"=="1" (
	::Clear previous variables 
	SET ZIP_SUB_FILE_SOURCE=
	SET ZIP_SUB_ZIP_PATH=
	SET ZIP_SUB_OUPUT_FOLDER=
	SET ZIP_SUB_ERROR=0
	
	::Find File path
	for /f "delims== tokens=1,2" %%a in ('set ^| findstr /i / "ZIP_INSTALL_FILE_%1"') do (
		SET ZIP_SUB_FILE_SOURCE=%%b
	)
	::Check if FILE_SOURCE variable exist
	IF "!ZIP_SUB_FILE_SOURCE!"=="" (
		ECHO ZIP FILE SOURCE NOT SET 
		SET ZIP_SUB_ERROR=1
	)

	::Check to see source file exist %~dp0 working direcotry of script
	IF NOT EXIST "%~dp0!ZIP_SUB_FILE_SOURCE!" (
		ECHO FILE DOES NOT EXIST !ZIP_SUB_FILE_SOURCE!
		SET ZIP_SUB_ERROR=1
	)

	::Find inside zip path for win32
	IF %NODEJS_INSTALLED_OS%==x86 (
		for /f "delims== tokens=1,2" %%a in ('set ^| findstr /i / "ZIP_INSTALL_PW32_%1"') do (
			SET ZIP_SUB_ZIP_PATH=%%b
		)
	)
	::Find inside zip path for win64
	IF %NODEJS_INSTALLED_OS%==x64 (
		for /f "delims== tokens=1,2" %%a in ('set ^| findstr /i / "ZIP_INSTALL_PW64_%1"') do (
			SET ZIP_SUB_ZIP_PATH=%%b
		)
	)
	::Check if ZIP PATH variable exist
	IF "!ZIP_SUB_ZIP_PATH!"=="" (
		ECHO ZIP PATH SOURCE NOT SET 
		SET ZIP_SUB_ERROR=1
	)
	
	::Get OUTPUT Folder
	FOR /F "delims=" %%i IN ("!ZIP_SUB_ZIP_PATH!") DO ( SET ZIP_SUB_OUPUT_FOLDER=%%~ni)
	
	::Everything good so far unzip and copy to node-red module folder
	IF "!ZIP_SUB_ERROR!"=="0" (
		IF EXIST %temp%\UpdateZipPalette rmdir /S /Q %temp%\UpdateZipPalette
		MKDIR %temp%\UpdateZipPalette
		:: UNZIP NODEJS 
		ECHO UNZIPPING !ZIP_SUB_FILE_SOURCE! PLEASE WAIT 
		:: %~dp0 working direcotry of script
		CALL :UnZipFile "%temp%\UpdateZipPalette" "%~dp0!ZIP_SUB_FILE_SOURCE!"
		
		IF NOT EXIST "%temp%\UpdateZipPalette!ZIP_SUB_ZIP_PATH!" (
			ECHO UNZIPPED PATH NOT FOUND 
			SET ZIP_SUB_ERROR=1
		)
		
		IF EXIST "%temp%\UpdateZipPalette!ZIP_SUB_ZIP_PATH!" (
			::Copy node_modules seperate to keep symbloic link
			XCOPY "%temp%\UpdateZipPalette!ZIP_SUB_ZIP_PATH!" "%NODEJS_SYM_LINK%\%NODEJS_FOLDER%\node_modules\!ZIP_SUB_OUPUT_FOLDER!" /O /X /E /H /K /I /Y /C /D
			::Clean Up the unzipped directory
			IF EXIST %temp%\ZIP_SUB rmdir /S /Q %temp%\UpdateZipPalette
			
			SET PALETTE_PRINT=!PALETTE_PRINT!`-- !ZIP_SUB_FILE_SOURCE!" "
		)
	)

	::If error is set exit something went wrong
	IF "!ZIP_SUB_ERROR!"=="1" CALL :EXIT_ERROR_INSTALL %1	
		
	::Clear previous variables 
	SET ZIP_SUB_FILE_SOURCE=
	SET ZIP_SUB_ZIP_PATH=
	SET ZIP_SUB_OUPUT_FOLDER=
	SET ZIP_SUB_ERROR=
)	

GOTO :EOF


:UPDATE_SE_AOA
IF EXIST "%DIR_SE_AOA%" (
	SET "OPT_LINK_NODE_MODULES_DIR=0"
	SET "OPT_NODERED_SERVICE=0"
	SET "NODEJS_DIR=%DIR_SE_AOA%"
	CALL :GET_USER_INPUT_UPDATE "SE AOA Found. Do you want to update?", -1
)

IF EXIST "%DIR_SE_AOA_32%" (
	SET "OPT_LINK_NODE_MODULES_DIR=0"
	SET "OPT_NODERED_SERVICE=0"
	SET "NODEJS_DIR=%DIR_SE_AOA_32%"
	CALL :GET_USER_INPUT_UPDATE "SE AOA Found. Do you want to update?", -1
)

GOTO :EOF

:UPDATE_SE_IIoT
IF EXIST "%DIR_SE_IIoT%" (
	 net stop "Schneider Node-RED Service"
	SET "OPT_LINK_NODE_MODULES_DIR=1"
	SET "OPT_NODERED_SERVICE=0"
	SET "NODEJS_DIR=%DIR_SE_IIoT%"
	CALL :GET_USER_INPUT_UPDATE "SE IIot Found. Do you want to update?", -1
	net start "Schneider Node-RED Service"
)
GOTO :EOF

:UPDATE_EXT
IF NOT %NODEJS_NEW_INSTALL%==-1 (
	SET "OPT_LINK_NODE_MODULES_DIR=0"
	SET "OPT_NODERED_SERVICE=%NODERED_SERVICE_INSTALL%"
	SET "NODEJS_DIR=%DIR_EXT_NODEJS%"
	IF EXIST "%DIR_EXT_NODEJS%" (
		CALL :GET_USER_INPUT_UPDATE "Do you want to Update %DIR_EXT_NODEJS%?" , %NODEJS_NEW_INSTALL%
	)
	IF NOT EXIST "%DIR_EXT_NODEJS%" (
		IF "%NODEJS_NEW_INSTALL%"=="1" (
			CALL :GET_USER_INPUT_UPDATE "Do you want to Install in %DIR_EXT_NODEJS%?" , %NODEJS_NEW_INSTALL%
		)
	)
)	
GOTO :EOF

:GET_USER_INPUT_UPDATE <Text> <NEW_INSTALL>
CLS
CHOICE /C:YNC /M %1 
SET USER_CHOICE=%ERRORLEVEL%
IF %USER_CHOICE%==1 (SET "NODEJS_NEW_INSTALL=%2" & CALL :RUN_UPDATE)
IF %USER_CHOICE%==3 (EXIT, EXIT)
SET USER_CHOICE=
GOTO :EOF

:INSTALL_DEPENDS_NODES
::Required Nodes for Other nodes to install
ECHO INSTALLING DEPEND NODES
IF NOT "%NODE_VERSION_node-gyp%"=="0" (	
	CALL :UpdateNodeRedPalette node-gyp %NODE_VERSION_node-gyp%
	SET NODE_VERSION_node-gyp=0
)
GOTO :EOF

:SET_DEPENDS_OPT
SET DEPENDS_GIT=0
SET DEPENDS_NODE_GYP=0
IF NOT "%NODE_VERSION_node-red-contrib-iiot-opcua%"=="0" (
SET DEPENDS_GIT=1
SET DEPENDS_NODE_GYP=1
)

IF "%DEPENDS_GIT%"=="1" (
	IF "%GIT_VER%"=="0" SET GIT_VER=-1
)

IF "%DEPENDS_NODE_GYP%"=="1"  (
	IF "%NODE_VERSION_node-gyp%"=="0" SET NODE_VERSION_node-gyp=-1
)
SET DEPENDS_GIT=
SET DEPENDS_NODE_GYP=
GOTO :EOF

:RUN_UPDATE
@ECHO OFF
SET NODERJS_PRINT=
SET GIT_PRINT=
SET NODERED_PRINT=
SET MODBUS_PRINT=
SET BUILD_TOOLS_PRINT=
::***** Check Internet Connection before running script
CALL :TEST_HTTP_CON 
CALL :CHECK_NODEJS_INSTALL
IF NOT "%NODEJS_VER%"=="0" CALL :GET_LATEST_NODEJS_VER
CALL :GET_INSTALLED_INFO
CALL :GET_NODEJS_FILENAME
CALL :GET_NODEJS_FOLDER
CALL :CREATE_NODEJS_SYM_LINK
CALL :CREATE_NODEJS_BACKUP
CALL :SET_DEPENDS_OPT
IF NOT "%GIT_VER%"=="0" CALL :UPDATE_GIT
IF NOT "%NODEJS_VER%"=="0" CALL :UPDATE_NODEJS
IF NOT "%windows_build_tools_VER%"=="0" CALL :UPDATE_windows_build_tools
CALL :SET_NPM_OPT
CALL :INSTALL_DEPENDS_NODES
IF NOT "%NODERED_VER%"=="0" CALL :UPDATE_NODERED
CALL :CREATE_START_NODERED_CMD
CALL :UpdateNodeRedPalettes
CALL :UpdateZipPalettes
IF "%OPT_NODERED_SERVICE%"=="1" CALL :INSTALL_NSS_NODERED_SERVICE
CALL :OPT_LINK_NODE_MODULES_DIR
CALL :REMOVE_CREATED_DIRS
CALL :MSG_SUCCESS_UPDATE
GOTO :EOF

:DEBUG_TRAP
@ECHO ON
@ECHO THIS DEBUG TRAP
PAUSE
@ECHO OFF
GOTO :EOF

:CHECK_RUN_ADMIN
net.exe session 1>NUL 2>NUL || (CLS & Echo This script requires elevated rights. Try again and run as administrator. & PAUSE & GOTO :EXIT_FINAL)
GOTO :EOF

:CHECK_NODEJS_INSTALL
IF NOT EXIST "%NODEJS_DIR%" (
	IF %NODEJS_NEW_INSTALL%==1 (	
		MKDIR "%NODEJS_DIR%"
		SET NODE_JS_BACKUP=0	
	)
	IF %NODEJS_NEW_INSTALL%==0 GOTO :EXIT_NO_NODEJS_NEW_INSTALL
)
GOTO :EOF

:GET_LATEST_NODEJS_VER
::LATEST VERSION
IF %NODEJS_VER%==-1 CALL :WGET "http://nodejs.org/dist/latest/SHASUMS256.txt" "%temp%\SHASUMS256.tmp"

IF NOT %NODEJS_VER%==-1 (
	echo.%NODEJS_VER%|findstr /C:"." >nul 2>&1
	if not errorlevel 1 (
	   :: EXACT VERSION
	   GOTO :EOF
	) else (
	   :: LATEST MAIN VERSION
	   CALL :WGET "http://nodejs.org/dist/latest-v%NODEJS_VER%.x/SHASUMS256.txt" "%temp%\SHASUMS256.tmp"
	)
)
IF NOT EXIST %temp%\SHASUMS256.tmp GOTO :EXIT_NODEJS_VER_FILE
findstr /R "node-v.*.pkg" %temp%\SHASUMS256.tmp > %temp%\NODELINE.tmp
SET /p NODELINE=<%temp%\NODELINE.tmp
SET "Up2Sub=%NODELINE:*node-v=%"
SET "NODEJS_VER=%Up2Sub:.pkg="&:"%"
::CLEAR ALL UNUSED VARS
SET NODELINE=
SET Up2Sub=
::REMOVE UNUSED FILES
DEL /Q %temp%\NODELINE.tmp
DEL /Q %temp%\SHASUMS256.tmp
GOTO :EOF

:GET_INSTALLED_INFO
SET SUB_INSTALLED_OS=%NODEJS_INSTALLED_OS%
SET SUB_INSTALLED_VER=%NODEJS_INSTALLED_VER%
IF NOT EXIST "!NODEJS_DIR!\node.exe" (
	SET SUB_INSTALLED_VER=-1
	IF "!SUB_INSTALLED_OS!"=="" GOTO :EXIT_NO_NODEJS_NEW_INSTALL
	IF NOT "!SUB_INSTALLED_OS!"=="AUTO" (
		IF "!SUB_INSTALLED_OS!"=="x86" SET SUB_OS_GOOD=1
		IF "!SUB_INSTALLED_OS!"=="x64" (
			IF "!PROCESSOR_ARCHITECTURE!"=="x86" (
				SET SUB_OS_GOOD=
				GOTO :EXIT_BAD_OS
			)
			SET SUB_OS_GOOD=1
		)
		
		IF NOT "!SUB_OS_GOOD!"=="1" (
			SET SUB_OS_GOOD=
			SET SUB_INSTALLED_VER=
			SET SUB_INSTALLED_OS=
			GOTO :EXIT_BAD_OS
		)	
		SET SUB_OS_GOOD=
	)
	IF "!SUB_INSTALLED_OS!"=="AUTO" (
		IF "!PROCESSOR_ARCHITECTURE!"=="x86" SET SUB_INSTALLED_OS=x86
		IF NOT "!PROCESSOR_ARCHITECTURE!"=="x86" SET SUB_INSTALLED_OS=x64
	)	
	
)	

IF EXIST "!NODEJS_DIR!\node.exe" (
	::GET NODEJS OS
	CALL "!NODEJS_DIR!\node" -p process.arch > %temp%\node_os.tmp
	SET /p SUB_INSTALLED_OS=<%temp%\node_os.tmp
	if !SUB_INSTALLED_OS!==ia32 SET SUB_INSTALLED_OS=x86
	if !SUB_INSTALLED_OS!==x64 SET SUB_INSTALLED_OS=x64
	DEL /Q %temp%\node_os.tmp
	
	::GET NODEJS VER	
	CALL "!NODEJS_DIR!\node" -v > %temp%\node_ver.tmp
	SET /p SUB_INSTALLED_VER=<%temp%\node_ver.tmp
	SET SUB_INSTALLED_VER=!SUB_INSTALLED_VER:~1,20!
	DEL /Q %temp%\node_ver.tmp

)
SET NODEJS_INSTALLED_OS=%SUB_INSTALLED_OS%
SET NODEJS_INSTALLED_VER=%SUB_INSTALLED_VER%
SET SUB_OS_GOOD=
SET SUB_INSTALLED_VER=
SET SUB_INSTALLED_OS=
GOTO :EOF

:GET_NODEJS_FILENAME
SET "NODEJS_FILENAME=node-v%NODEJS_VER%-win-%NODEJS_INSTALLED_OS%"
GOTO :EOF

:GET_NODEJS_FOLDER
FOR /F "delims=" %%i IN ("%NODEJS_DIR%") DO (ECHO %%~ni) > %temp%\NODE_FOLDER.tmp
SET /p NODEJS_FOLDER=<%temp%\NODE_FOLDER.tmp
::REMOVE UNUSED FILES
DEL /Q %temp%\NODE_FOLDER.tmp
GOTO :EOF

:CREATE_NODEJS_SYM_LINK
IF NOT EXIST "%NODEJS_SYM_LINK%" (
	mklink /J "%NODEJS_SYM_LINK%" "%NODEJS_DIR%\..\"
	)
GOTO :EOF

:CREATE_NODEJS_BACKUP
IF NOT %NODE_JS_BACKUP%==1 GOTO :EOF 
SET NODEJS_BACKUP=%NODEJS_SYM_LINK%\%NODEJS_FOLDER%_%date:~-4,4%%date:~-7,2%%date:~-10,2%_%time:~0,2%%time:~3,2%%time:~6,2%
XCOPY "%NODEJS_SYM_LINK%\%NODEJS_FOLDER%" "%NODEJS_BACKUP%" /O /X /E /H /K /I /Y /C
::CLEAR ALL UNUSED VARS
SET NODEJS_BACKUP=
GOTO :EOF

:UPDATE_NODEJS
IF NOT "%NODEJS_VER%"=="%NODEJS_INSTALLED_VER%" SET NODEJS_FORCE_UPDATE=1
IF %NODEJS_FORCE_UPDATE%==1 (
	:: DOWNLOAD NODEJS
	ECHO DOWNLOADING NODEJS_%NODEJS_VER% PLEASE WAIT
	if %NODEJS_VER%==-1 CALL :WGET "http://nodejs.org/dist/latest/%NODEJS_FILENAME%.zip" "%temp%\nodejs.zip"
	if NOT %NODEJS_VER%==-1 CALL :WGET "http://nodejs.org/dist/v%NODEJS_VER%/%NODEJS_FILENAME%.zip" "%temp%\nodejs.zip"
	IF NOT EXIST "%temp%\nodejs.zip" GOTO :EXIT_BAD_NODEJS_ZIP
	:: REMOVE OLD UNZIP FOLDER IF EXIST
	IF EXIST %temp%\%NODEJS_FILENAME% rmdir /S /Q %temp%\%NODEJS_FILENAME%
	:: UNZIP NODEJS 
	ECHO UNZIPPING NODEJS_%NODEJS_VER% PLEASE WAIT 
	CALL :UnZipFile "%temp%" "%temp%\nodejs.zip"
	DEL /Q "%temp%\nodejs.zip"
	IF NOT EXIST "%temp%\%NODEJS_FILENAME%" GOTO :EXIT_BAD_NODEJS_ZIP
	::REMOVE OLD NPM BECAUSE NEW NODEJS HAS NEW NPM MODULE
	rmdir /S /Q "%NODEJS_SYM_LINK%\%NODEJS_FOLDER%\node_modules\npm"
	ECHO ON
	::Copy node_modules seperate to keep symbloic link
	XCOPY "%temp%\%NODEJS_FILENAME%\node_modules\*.*" "%NODEJS_SYM_LINK%\%NODEJS_FOLDER%\node_modules" /O /X /E /H /K /I /Y /C
	::Copy File root in NodeJs Dir
	XCOPY "%temp%\%NODEJS_FILENAME%\*.*" "%NODEJS_SYM_LINK%\%NODEJS_FOLDER%" /O /X /H /K /I /Y /C
	ECHO OFF
	::REMOVE NODEJS UNZIP DIR
	rmdir /S /Q "%temp%\%NODEJS_FILENAME%"
	SET NODERJS_PRINT=`-- NodeJs@!NODEJS_VER!
)
GOTO :EOF 

:OPT_LINK_NODE_MODULES_DIR
IF NOT %OPT_LINK_NODE_MODULES_DIR%==1 GOTO :EOF
IF NOT EXIST "%NODEJS_DIR%\..\node_modules" GOTO :EOF
::Check if symlink/junction was already created
fsutil reparsepoint query "%NODEJS_DIR%\..\node_modules" >"%temp%\check_dir.tmp"
if %errorlevel% == 1 (
rename "%NODEJS_DIR%\..\node_modules" "node_modules_SE_OLD"
mklink /J "%NODEJS_DIR%\..\node_modules" "%NODEJS_DIR%\node_modules"
)
DEL /Q "%temp%\check_dir.tmp"
GOTO :EOF

:SET_NPM_OPT
IF EXIST "%NODEJS_DIR%\npm" (
	ECHO SETTING NPM OPTIONS PLEASE WAIT
	SET "npm_config_registry=https://registry.npmjs.org"
	SET "npm_config_strict-ssl=false"
	SET npm_config_https-proxy=
	CALL "%NODEJS_DIR%\npm" config delete proxy
	CALL "%NODEJS_DIR%\npm" config delete https-proxy
	CALL "%NODEJS_DIR%\npm" config rm proxy
	CALL "%NODEJS_DIR%\npm" config rm https-proxy
	CALL "%NODEJS_DIR%\npm" config --global delete proxy
	CALL "%NODEJS_DIR%\npm" config --global delete https-proxy
	CALL "%NODEJS_DIR%\npm" config --global rm proxy
	CALL "%NODEJS_DIR%\npm" config --global rm https-proxy
	::CLEAR CACHE SO IF WILL NOT GIVE FALUSE POSTIVE
	CALL "%NODEJS_DIR%\npm" cache clean --force  >nul 2>&1 

	::CLEAR CACHE SO IF WILL NOT GIVE FALUSE POSTIVE
	CALL "%NODEJS_DIR%\npm" cache clean --force  >nul 2>&1 
	IF NOT "!SYS_PROXY!"=="DIRECT" (
		CALL "%NODEJS_DIR%\npm" config set proxy !SYS_PROXY!
	)
	ECHO TESTING NPM INTERNET CONNECTION
	CALL "%NODEJS_DIR%\npm" --fetch-retry-maxtimeout 11000 --fetch-retries 1 ping 2<&1 || GOTO :EXIT_NPM_INTERNET
	ECHO NPM INTERNET CONNECTION SUCCESSFUL
)
GOTO :EOF

:UPDATE_NODERED
SET SUB_VER=
CD /d "%NODEJS_DIR%"
CALL "%NODEJS_DIR%\nodevars.bat"
CD /d "%NODEJS_DIR%"
IF NOT %NODERED_VER%==-1 SET SUB_VER=@!NODERED_VER!
CALL "%NODEJS_DIR%\npm" install -g --unsafe-perm node-red%SUB_VER% 2<&1 || (SET SUB_VER= & GOTO :EXIT_NPM_NODERED)
CALL :GET_NPM_PKG_VER node-red
SET NODERED_PRINT=!SUB_VER!
SET SUB_VER=
GOTO :EOF 

:CREATE_START_NODERED_CMD
SET NODERED_CMD="%NODEJS_DIR%\start-node-red.cmd"
IF EXIST %NODERED_CMD% DEL /f /q %NODERED_CMD%
>%NODERED_CMD%  ECHO mkdir "node-red-home"
>>%NODERED_CMD% ECHO set userDir=node-red-home
>>%NODERED_CMD% ECHO call "%%~dp0\nodevars.bat"
>>%NODERED_CMD% ECHO "%%~dp0\node.exe"  "%%~dp0\node_modules\node-red\red.js" %%* --userDir "%%~dp0/%%userDir%%/"
GOTO :EOF 

:UpdateNodeRedPalettes
for /f "delims== tokens=1,2" %%a in ('set ^| findstr /i / "NODE_VERSION_"') do (
	SET NODE_INSTALL_OPT=
	SET NODE_INSTALL_VER=%%b  
	SET NODE_INSTALL_NAME=%%a	
	SET NODE_INSTALL_NAME=!NODE_INSTALL_NAME:NODE_VERSION_=!
	IF  "%NODE_INSTALL_NAME%"=="node-red-contrib-iiot-opcua" (
		SET NODE_INSTALL_OPT="--unsafe-perm --build-from-source"
	)	
	CALL :UpdateNodeRedPalette !NODE_INSTALL_NAME! !NODE_INSTALL_VER! !NODE_INSTALL_OPT!
	)
GOTO :EOF

:UpdateNodeRedPalette <Palette> <PaletteVersion> <PaletteOptions>
IF NOT "%2"=="0" (
	ECHO INSTALLING NODE: %1
	SET SUB_VER=
	CD /d "%NODEJS_DIR%"
	CALL "%NODEJS_DIR%\nodevars.bat"
	CD /d "%NODEJS_DIR%"
	IF NOT "%2"=="-1" SET SUB_VER=@%2
	CALL "%NODEJS_DIR%\npm" install -g --no-audit --no-update-notifier --save --save-prefix="~" --production %1!SUB_VER! %3 2<&1 || (SET SUB_VER= & CALL :EXIT_ERROR_INSTALL %1)
	CALL :GET_NPM_PKG_VER %1
	::Remove Spaces
	SET SUB_VER=!SUB_VER: =!
	::Use Space as terminator
	SET PALETTE_PRINT=!PALETTE_PRINT!!SUB_VER!" "
	SET SUB_VER=
	)
GOTO :EOF 

:UPDATE_windows_build_tools
SET SUB_VER=
CD /d "%NODEJS_DIR%"
CALL "%NODEJS_DIR%\nodevars.bat"
CD /d "%NODEJS_DIR%"
IF NOT "%windows_build_tools_VER%"=="-1" SET SUB_VER=@!windows_build_tools_VER!
CD "%NODEJS_DIR%"
CALL "%NODEJS_DIR%\npm" install --global --production windows-build-tools%SUB_VER% --vs2015 2<&1 || (SET SUB_VER= & CALL :EXIT_ERROR_INSTALL windows-build-tools)
CALL "%NODEJS_DIR%\npm" install --save nan
SETX VCTargetsPath "C:\Program Files (x86)\MSBuild\Microsoft.Cpp\v4.0\V140"
CALL :GET_NPM_PKG_VER windows-build-tools
SET BUILD_TOOLS_PRINT=!SUB_VER!
SET SUB_VER=
GOTO :EOF 


:UPDATE_GIT
ECHO DOWNLOADING GIT PLEASE WAIT.
CALL :GET_INSTALLED_INFO
CALL :GET_LATEST_GIT_VER
CALL :GET_GIT_LINK
IF EXIST %VBS_SAFE_PATH%\GIT_INSTALLER.EXE DEL /f /q %VBS_SAFE_PATH%\GIT_INSTALLER.EXE
IF NOT "%GIT_LINK%"=="" CALL :WGET "%GIT_LINK%" "%VBS_SAFE_PATH%\GIT_INSTALLER.EXE"
IF NOT EXIST "%VBS_SAFE_PATH%\GIT_INSTALLER.EXE" GOTO :EXIT_BAD_GIT_EXE
ECHO INSTALLING GIT PLEASE WAIT.
CALL "%VBS_SAFE_PATH%\GIT_INSTALLER.EXE" /VERYSILENT /NORESTART /NOCANCEL /SP- /CLOSEAPPLICATIONS /RESTARTAPPLICATIONS /COMPONENTS="icons,ext\reg\shellhere,assoc,assoc_sh"
IF EXIST %VBS_SAFE_PATH%\GIT_INSTALLER.EXE DEL /f /q %VBS_SAFE_PATH%\GIT_INSTALLER.EXE

:: Add Curl Path to Path ENV
IF "!PROCESSOR_ARCHITECTURE!"=="x86" 		SET PATH_GIT_BIN=C:\Program Files\Git\mingw32\bin\
IF NOT "!PROCESSOR_ARCHITECTURE!"=="x86" 	SET PATH_GIT_BIN=C:\Program Files\Git\mingw64\bin\
:: Need to use VBS sub because SETX has 1024 char limit
CALL :APPEND_PATH "!PATH_GIT_BIN!"

SET PATH_GIT_BIN=
SET CurrPath=
SET GIT_PRINT=`-- Git@%GIT_VER%
GOTO :EOF

:GET_GIT_LINK
IF "!PROCESSOR_ARCHITECTURE!"=="x86" (
	SET "GIT_LINK=https://github.com/git-for-windows/git/releases/download/v%GIT_VER%.windows.1/Git-%GIT_VER%-32-bit.exe"
	GOTO :EOF
)
IF NOT "!PROCESSOR_ARCHITECTURE!"=="x86" (
	SET "GIT_LINK=https://github.com/git-for-windows/git/releases/download/v%GIT_VER%.windows.1/Git-%GIT_VER%-64-bit.exe"
	GOTO :EOF
)
GOTO :EXIT_BAD_OS

:GET_LATEST_GIT_VER
::LATEST VERSION
IF EXIST %temp%\git.tmp DEL /f /q %temp%\git.tmp
IF %GIT_VER%==-1 CALL :WGET "https://git-scm.com/download/win" "%temp%\git.tmp" 
IF NOT %GIT_VER%==-1 GOTO :EOF
IF NOT EXIST %temp%\git.tmp GOTO :EXIT_GIT_VER_FILE

::Get line only with "auto-download-link"
FOR /F "delims=" %%a IN ('FINDSTR /L /C:"auto-download-link" %temp%\git.tmp') DO SET SUB_GIT_VER=%%a
::Remove End of string up to "G"
FOR /f "tokens=1 delims=G" %%a IN ("%SUB_GIT_VER%") DO SET SUB_GIT_VER=%%a
::Remove Prefix "download/v"
SET "SUB_GIT_VER=%SUB_GIT_VER:*download/v=%"
::Remove Postfix ".windows"
SET "SUB_GIT_VER=%SUB_GIT_VER:.windows="&:"%"
SET GIT_VER=%SUB_GIT_VER%
IF EXIST %temp%\git.tmp DEL /f /q %temp%\git.tmp
GOTO :EOF 

:INSTALL_NSS_NODERED_SERVICE
SET NSSM_URL=https://nssm.cc/ci/nssm-2.24-101-g897c7ad.zip
SET NSSM_ZIP_DIR=nssm-2.24-101-g897c7ad
:: DOWNLOAD NSSM
ECHO DOWNLOADING NSSM PLEASE WAIT
CALL :WGET "%NSSM_URL%" "%temp%\nssm.zip"

IF NOT EXIST "%temp%\nssm.zip" GOTO :EXIT_BAD_NSSM_ZIP
:: REMOVE OLD UNZIP FOLDER IF EXIST
IF EXIST %temp%\%NSSM_ZIP_DIR% rmdir /S /Q %temp%\%NSSM_ZIP_DIR%
:: UNZIP NSSM
ECHO UNZIPPING NSS PLEASE WAIT 
CALL :UnZipFile "%temp%" "%temp%\nssm.zip"
DEL /Q "%temp%\nssm.zip"
IF NOT EXIST "%temp%\%NSSM_ZIP_DIR%" GOTO :EXIT_BAD_NSSM_ZIP
::Copy File root in NodeJs Dir
XCOPY "%temp%\%NSSM_ZIP_DIR%\*.*" "%DIR_EXT_NODEJS%\NSSM" /O /X /E /H /K /I /Y /C
::REMOVE NODEJS UNZIP DIR
rmdir /S /Q "%temp%\%NSSM_ZIP_DIR%"

IF "!PROCESSOR_ARCHITECTURE!"=="x86" (
	SET "NSSM_CMD=NSSM\win32\nssm.exe"
)
IF NOT "!PROCESSOR_ARCHITECTURE!"=="x86" (
	SET "NSSM_CMD=NSSM\win64\nssm.exe"
)
%DIR_EXT_NODEJS%\%NSSM_CMD% install %NODERED_SERVICE_NAME% "%DIR_EXT_NODEJS%\start-node-red.cmd"
%DIR_EXT_NODEJS%\%NSSM_CMD% set %NODERED_SERVICE_NAME% AppDirectory "%DIR_EXT_NODEJS%"
%DIR_EXT_NODEJS%\%NSSM_CMD% set %NODERED_SERVICE_NAME% Description "A wiring tool for the Internet of Things"
net start "%NODERED_SERVICE_NAME%"

::Create Batch for INSTALL service
SET NODERED_CMD="%NODEJS_DIR%\SERVICE_INSTALL_node-red.cmd"
IF EXIST %NODERED_CMD% DEL /f /q %NODERED_CMD%
>%NODERED_CMD%  ECHO %%~dp0\%NSSM_CMD% install %NODERED_SERVICE_NAME% "%DIR_EXT_NODEJS%\start-node-red.cmd"
>>%NODERED_CMD% ECHO %%~dp0\%NSSM_CMD% set %NODERED_SERVICE_NAME% AppDirectory "%DIR_EXT_NODEJS%"
>>%NODERED_CMD% ECHO %%~dp0\%NSSM_CMD% set %NODERED_SERVICE_NAME% Description "A wiring tool for the Internet of Things"
>>%NODERED_CMD% ECHO net start "%NODERED_SERVICE_NAME%"

::Create Batch for REMOVE service
SET NODERED_CMD="%NODEJS_DIR%\SERVICE_REMOVE_node-red.cmd"
IF EXIST %NODERED_CMD% DEL /f /q %NODERED_CMD%
>%NODERED_CMD% ECHO net stop "%NODERED_SERVICE_NAME%"
>>%NODERED_CMD%  ECHO %%~dp0\%NSSM_CMD% remove %NODERED_SERVICE_NAME%

SET NODERED_CMD=
SET NSSM_URL=
SET NSSM_ZIP_DIR=
SET NSSM_PRINT=`-- %NODERED_SERVICE_NAME% Windows Service
GOTO :EOF 

:APPEND_PATH <NewPath> 
IF NOT EXIST %VBS_SAFE_PATH% (
	SET VBS_SAFE_PATH_CREATED=1
	MKDIR "%VBS_SAFE_PATH%"
)
SET APPEND_PATH_VBS="%VBS_SAFE_PATH%\APPEND_PATH.vbs"
IF EXIST %APPEND_PATH_VBS% DEL /f /q %APPEND_PATH_VBS%
>%APPEND_PATH_VBS%  ECHO Set objShell = CreateObject("WScript.Shell")
>>%APPEND_PATH_VBS% ECHO Set objEnv = objShell.Environment("System")
>>%APPEND_PATH_VBS% ECHO If InStr(objEnv("PATH"),%1)=0 Then
>>%APPEND_PATH_VBS% ECHO	objEnv("PATH") = objEnv("PATH") + Chr(59) + %1
>>%APPEND_PATH_VBS% ECHO End If
>>%APPEND_PATH_VBS% ECHO Set objEnv = Nothing
>>%APPEND_PATH_VBS% ECHO Set objShell = Nothing
cscript //nologo %APPEND_PATH_VBS%
IF EXIST %APPEND_PATH_VBS% DEL /f /q %APPEND_PATH_VBS%
SET APPEND_PATH_VBS=
GOTO :EOF

:UnZipFile <ExtractTo> <newzipfile>
SET UnZipEXE=C:\Program Files\Git\usr\bin\unzip.exe
IF NOT EXIST "%UnZipEXE%" (CALL :UnZipFileVBA %1 %2)
IF EXIST "%UnZipEXE%" ("%UnZipEXE%" %2 -d %1)
SET UnZipEXE=
GOTO :EOF

:UnZipFileVBA <ExtractTo> <newzipfile>
IF NOT EXIST %VBS_SAFE_PATH% (
	SET VBS_SAFE_PATH_CREATED=1
	MKDIR "%VBS_SAFE_PATH%"
)
SET UNZIP_VBS="%VBS_SAFE_PATH%\unzip.vbs"
IF EXIST %UNZIP_VBS% DEL /f /q %UNZIP_VBS%
>%UNZIP_VBS%  ECHO Set fso = CreateObject("Scripting.FileSystemObject")
>>%UNZIP_VBS% ECHO If NOT fso.FolderExists(%1) Then
>>%UNZIP_VBS% ECHO fso.CreateFolder(%1)
>>%UNZIP_VBS% ECHO End If
>>%UNZIP_VBS% ECHO set objShell = CreateObject("Shell.Application")
>>%UNZIP_VBS% ECHO set FilesInZip=objShell.NameSpace(%2).items
>>%UNZIP_VBS% ECHO objShell.NameSpace(%1).CopyHere FilesInZip , 1044
>>%UNZIP_VBS% ECHO Set fso = Nothing
>>%UNZIP_VBS% ECHO Set objShell = Nothing
cscript //nologo %UNZIP_VBS%
IF EXIST %UNZIP_VBS% DEL /f /q %UNZIP_VBS%
SET UNZIP_VBS=
GOTO :EOF

:WGET <URL> <NEWFILE>
::Define SYS_PROXY if does not exist
IF "%SYS_PROXY%"=="" (
	SET SYS_PROXY=DIRECT
)
IF NOT EXIST %VBS_SAFE_PATH% (
	SET VBS_SAFE_PATH_CREATED=1
	MKDIR "%VBS_SAFE_PATH%"
)
SET WGET_VBS="%VBS_SAFE_PATH%\wget.vbs"
IF EXIST %WGET_VBS% DEL /f /q %WGET_VBS%
>%WGET_VBS%  ECHO Url = %1
>>%WGET_VBS% ECHO dim xHttp: Set xHttp = createobject("MSXML2.ServerXMLHTTP.6.0")
>>%WGET_VBS% ECHO dim bStrm: Set bStrm = createobject("Adodb.Stream")
>>%WGET_VBS% ECHO xHttp.Open "GET", Url, False
IF NOT "%SYS_PROXY%"=="DIRECT" (
>>%WGET_VBS% ECHO	xHttp.setProxy 2, "%SYS_PROXY%"
)
>>%WGET_VBS% ECHO xHttp.Send
>>%WGET_VBS% ECHO with bStrm
>>%WGET_VBS% ECHO     .type = 1 '//binary
>>%WGET_VBS% ECHO     .open
>>%WGET_VBS% ECHO     .write xHttp.responseBody
>>%WGET_VBS% ECHO     .savetofile %2, 2 '//overwrite
>>%WGET_VBS% ECHO end with
cscript //nologo %WGET_VBS%
IF EXIST %WGET_VBS% DEL /f /q %WGET_VBS%
SET WGET_VBS=
GOTO :EOF


:TEST_HTTP_CON 
CALL :SET_SYS_PROXY
IF NOT EXIST %VBS_SAFE_PATH% (
	SET VBS_SAFE_PATH_CREATED=1
	MKDIR "%VBS_SAFE_PATH%"
)
SET TEST_HTTP_VBS="%VBS_SAFE_PATH%\test_http.vbs"
IF EXIST %TEST_HTTP_VBS% DEL /f /q %TEST_HTTP_VBS%
>%TEST_HTTP_VBS%  ECHO Url = "http://www.google.com"
>>%TEST_HTTP_VBS% ECHO dim xHttp: Set xHttp = createobject("MSXML2.ServerXMLHTTP.6.0")
>>%TEST_HTTP_VBS% ECHO dim oFSO: Set oFSO = CreateObject("Scripting.FileSystemObject")
>>%TEST_HTTP_VBS% ECHO dim oLogFile: Set oLogFile = oFSO.OpenTextFile("%temp%\SYS_PROXY.TMP", 2, True)
>>%TEST_HTTP_VBS% ECHO xHttp.Open "GET", Url, False
IF NOT "%SYS_PROXY%"=="DIRECT" (
>>%TEST_HTTP_VBS% ECHO	xHttp.setProxy 2, "%SYS_PROXY%"
)
>>%TEST_HTTP_VBS% ECHO xHttp.setTimeouts 1000,1000,1000,1000
>>%TEST_HTTP_VBS% ECHO On Error Resume Next
>>%TEST_HTTP_VBS% ECHO xHttp.Send
>>%TEST_HTTP_VBS% ECHO ErrorNumber=Err.Number
>>%TEST_HTTP_VBS% ECHO If ErrorNumber = 0 Then
>>%TEST_HTTP_VBS% ECHO   oLogFile.WriteLine abs(xHttp.status=200)
>>%TEST_HTTP_VBS% ECHO Else
>>%TEST_HTTP_VBS% ECHO   oLogFile.WriteLine "0"
>>%TEST_HTTP_VBS% ECHO End If
>>%TEST_HTTP_VBS% ECHO oLogFile.Close
cscript //nologo %TEST_HTTP_VBS%
IF EXIST %TEST_HTTP_VBS% DEL /f /q %TEST_HTTP_VBS%
SET TEST_HTTP_VBS=
IF NOT EXIST %temp%\SYS_PROXY.TMP GOTO :EXIT_NO_INTERNET
SET /p INTERNET_RESULT=<%temp%\SYS_PROXY.TMP
DEL /Q %temp%\SYS_PROXY.TMP
IF "%INTERNET_RESULT%"=="1" (SET INTERNET_RESULT= & ECHO INTERNET CONNECTION SUCCESSFUL & GOTO :EOF)
SET INTERNET_RESULT=
GOTO :EXIT_NO_INTERNET

:SET_SYS_PROXY
::Define SYS_PROXY if does not exist
IF "%SYS_PROXY%"=="" (
	SET SYS_PROXY=AUTO
)
::Get system proxy if set for auto
IF "%SYS_PROXY%"=="AUTO" CALL :GET_SYS_PROXY
IF "%SYS_PROXY%"=="DIRECT" ECHO Testing Internet with Connection Direct access (no proxy server)
IF NOT "%SYS_PROXY%"=="DIRECT" ECHO Testing Internet with Proxy Server: %SYS_PROXY%
GOTO :EOF

:GET_SYS_PROXY
:: Get current proxy info
NETSH winhttp show proxy > %temp%\proxy.tmp
::ECHO     Proxy Server(s) :  gateway.schneider.zscaler.net:9480;Test.com > proxy.tmp
::ECHO     Direct access (no proxy server). > proxy.tmp
SET SUB_PROXY=
:: Get only Proxy line
FINDSTR /L /C:"Proxy Server(s) : " %temp%\proxy.tmp > %temp%\proxy2.tmp
SET /p SUB_PROXY=<%temp%\proxy2.tmp
::Get only proxy values
IF NOT "%SUB_PROXY%"=="" SET "SUB_PROXY=%SUB_PROXY:*Proxy Server(s) :  =%"
::Get only first proxy
IF NOT "%SUB_PROXY%"=="" FOR /f "tokens=1 delims=;" %%a IN ("%SUB_PROXY%") DO SET SUB_PROXY=%%a
DEL /Q %temp%\proxy.tmp
DEL /Q %temp%\proxy2.tmp
IF NOT "%SUB_PROXY%"=="" SET SYS_PROXY=%SUB_PROXY%
IF "%SUB_PROXY%"=="" SET SYS_PROXY=DIRECT
SET SUB_PROXY=
GOTO :EOF

:GET_NPM_PKG_VER <NODE_NAME>
@ECHO OFF
IF EXIST %temp%\ver.tmp DEL /f /q %temp%\ver.tmp
CALL "%NODEJS_DIR%\npm" -g list %1 --depth=0 >%temp%\ver.tmp 
FOR /F "delims=" %%a IN ('FINDSTR /L /C:"%1" %temp%\ver.tmp') DO SET SUB_VER=%%a
IF EXIST %temp%\ver.tmp DEL /f /q %temp%\ver.tmp
GOTO :EOF

:MSG_SUCCESS_UPDATE
CLS 
ECHO The Following have been installed/updated:
IF NOT "%NODERJS_PRINT%"=="" ECHO !NODERJS_PRINT!
IF NOT "%GIT_PRINT%"=="" ECHO !GIT_PRINT!
IF NOT "%BUILD_TOOLS_PRINT%"=="" ECHO !BUILD_TOOLS_PRINT!
IF NOT "%NODERED_PRINT%"=="" ECHO !NODERED_PRINT!
FOR %%a IN ("!PALETTE_PRINT!") DO (IF NOT %%a=="" ECHO %%a)
IF NOT "%NSSM_PRINT%"=="" ECHO !NSSM_PRINT!

::Clear all print vars
SET PALETTE_PRINT=
SET NSSM_PRINT=
SET NODERJS_PRINT=
SET GIT_PRINT=
SET BUILD_TOOLS_PRINT=
SET NODERED_PRINT= 
::Only install GIT once
SET GIT_VER=0
PAUSE
GOTO :EOF

:EXIT_BAD_NSS_ZIP
@ECHO OFF
SET NSSM_URL=
SET NSSM_ZIP_DIR=
CLS
ECHO "NSSM download bad and does not exist"
PAUSE
GOTO :EXIT_FINAL

:EXIT_NO_INTERNET
@ECHO OFF
SET INTERNET_RESULT=
DEL /Q %temp%\SYS_PROXY.TMP
CLS
IF "%SYS_PROXY%"=="DIRECT" ECHO Internet connection failure with Connection Direct access (no proxy server)
IF NOT "%SYS_PROXY%"=="DIRECT" ECHO Internet connection failure with Proxy Server: %SYS_PROXY%
PAUSE
GOTO :EXIT_FINAL

:EXIT_NPM_INTERNET
@ECHO OFF
CLS
ECHO "NPM failed internet connection"
PAUSE
GOTO :EXIT_FINAL



:EXIT_ERROR_INSTALL <Text>
@ECHO OFF
@ECHO; 
CHOICE /M "Failed installing %1.  Do you want to continue?"
SET USER_CHOICE=!ERRORLEVEL!
IF !USER_CHOICE!==1 (SET USER_CHOICE= & GOTO :EOF)
SET USER_CHOICE=
GOTO :EXIT_FINAL

:EXIT_NPM_NODERED
@ECHO OFF
CLS
ECHO "NPM failed installing Nodered update"
PAUSE
GOTO :EXIT_FINAL

:EXIT_BAD_OS
@ECHO OFF
CLS
ECHO "%NODEJS_INSTALLED_OS%: Not valid OS Type"
PAUSE
GOTO :EXIT_FINAL

:EXIT_BAD_NODEJS_ZIP
@ECHO OFF
CLS
ECHO "NodeJs download bad and does not exist"
PAUSE
GOTO :EXIT_FINAL

:EXIT_NODEJS_VER_FILE
@ECHO OFF
CLS
ECHO "NODEJS VER FILE download bad and does not exist"
PAUSE
GOTO :EXIT_FINAL

:EXIT_NO_NODEJS_NEW_INSTALL
@ECHO OFF
CLS
ECHO "Existing Install NODE.EXE does not exist"
PAUSE
GOTO :EXIT_FINAL

:EXIT_GIT_VER_FILE
@ECHO OFF
CLS
ECHO "GIT VER FILE download bad and does not exist"
PAUSE
GOTO :EXIT_FINAL

:EXIT_BAD_GIT_EXE
@ECHO OFF
CLS
ECHO "GIT download bad and does not exist"
PAUSE
GOTO :EXIT_FINAL

:REMOVE_CREATED_DIRS
::REMOVE SYMBLOIC LINK
IF EXIST "%NODEJS_SYM_LINK%"  RMDIR /Q "%NODEJS_SYM_LINK%"
::REMOVE VBS_SAFE_PATH if created by script
IF "%VBS_SAFE_PATH_CREATED%"=="1" (
	rmdir /S /Q "%VBS_SAFE_PATH%"
)
GOTO :EOF

:EXIT_FINAL
CALL :REMOVE_CREATED_DIRS
::CLEAR ALL USED ENV VARS
SET DIR_SE_IIoT=
SET DIR_SE_AOA=
SET DIR_SE_AOA_32=
SET DIR_EXT_NODEJS=
SET SYS_PROXY=
SET NODEJS_VER=
SET NODERED_VER=
SET NODE_JS_BACKUP=
SET NODEJS_NEW_INSTALL=
SET NODEJS_FORCE_UPDATE=
SET OPT_LINK_NODE_MODULES_DIR=
SET NODEJS_INSTALLED_OS=
SET GIT_VER=
SET NODE_VERSION_node-red-contrib-modbus=
SET NODE_VERSION_node-red-contrib-iiot-opcua=
SET NODE_VERSION_node-red-contrib-opcua=
SET NODE_VERSION_node-red-dashboard=
SET NODE_VERSION_node-red-contrib-cip-ethernet-ip=
SET NODE_VERSION_node-red-contrib-s7=
SET NODE_VERSION_node-gyp=
SET windows_build_tools_VER=
SET NODERED_SERVICE_INSTALL=
SET NODERED_SERVICE_NAME=
SET ZIP_INSTALL_NAME_SE_Modbus=
SET ZIP_INSTALL_FILE_SE_Modbus=
SET ZIP_INSTALL_PW32_SE_Modbus=
SET ZIP_INSTALL_PW64_SE_Modbus=
SET ZIP_INSTALL_NAME_SE_Machine_Advisor=
SET ZIP_INSTALL_FILE_SE_Machine_Advisor=
SET ZIP_INSTALL_PW32_SE_Machine_Advisor=
SET ZIP_INSTALL_PW64_SE_Machine_Advisor=
SET ZIP_INSTALL_NAME_SE_Aveva-Insight=
SET ZIP_INSTALL_FILE_SE_Aveva-Insight=
SET ZIP_INSTALL_PW32_SE_Aveva-Insight=
SET ZIP_INSTALL_PW64_SE_Aveva-Insight=
SET ZIP_INSTALL_NAME_SE_Harmony_Hub=
SET ZIP_INSTALL_FILE_SE_Harmony_Hub=
SET ZIP_INSTALL_PW32_SE_Harmony_Hub=
SET ZIP_INSTALL_PW64_SE_Harmony_Hub=
::USE TWO EXIT FOR EXITING SUBS
EXIT
EXIT


:: Author: Joel Zupancic
:: Description: 
:: Script that will update NodeJS, NodeRed, Modbus for external
:: installations, AOA and SE IIot. It will also try to detect if the internet connection 
:: requires proxy connection and use the value provided in the settings.  For NodeJS the 
:: script will either use the version provided in settings or detect and install the 
:: latest version.  If an existing NODEJS installation is installed and found it will 
:: not update unless the latest version is newer or forced in settings.  The script 
:: detects AOA and SE IIot installed in the default directories.  If either are 
:: installed in different directory the script settings can be modified to where the 
:: installation is installed.  If the script does not detect AOA, SE IIot, or an 
:: external installation specified with DIR_EXT_NODEJS, it will install a clean 
:: installation to the specified directory.  If backup setting  is enable it will create 
:: backup of the current installation folder with date/time stamp.   All settings are 
:: found at the top of the script and best if edited with a good text editor like 
:: Notepad++.  The script requires to be run as administrator because any files modified 
:: in the Program folder requires admin rights.   To run the script rename with 
:: extension ".cmd" and right mouse click "Run as administrator.
::
:: For SE IIot it will rename existing node_modules folder and after installation  make 
:: a symbolic link to the correctly NodeJS installation.  This will fix SE IIot 
:: installation and still make the "Schneider Node-RED Service" work. 
::
:: For SE AOA make you manual close the AOA manager before running the script
::
:: VER: V2  04/12/2019  Initial Release
:: VER: V3  04/13/2019  Added Checking NODEJS installed version and not updating if same	
:: VER: V5  04/14/2019  Autodetect Direct connection or use Proxy
:: VER: V10 07/29/2019  Fixed Proxy Connection,  Add checking for internet before starting update script
:: VER: V11 02/11/2020  Added batch file to launch nodered so nodevars batch is called.  This fixes palettes install in nodered standalone
:: VER: V12 02/11/2020  Created WGET sub instead of using certutil.exe for downloads via web
:: VER: V13 02/11/2020  Added the abiltiy to use Major only version numbers for NodeJS and NodeRed.  Notes for settings added settings section of script
:: VER: V14 02/11/2020  Fixed Direct/Proxy checking
:: VER: V15 02/11/2020  Added option for AOA installed on 32bit windows
:: VER: V16 02/12/2020  Tested and Validated SE_MODBUS and SEMachineAdvisor with NodeJS_13.8.0 and NodeRed_1.0.3
:: VER: V17 02/22/2020  New VBS method for checking internet connection.  Add new settings for SYS_PROXY=AUTO and DIRECT
:: VER: V17 02/22/2020  Created subroutines: MSG_SUCCESS_UPDATE, TEST_HTTP_CON, SET_SYS_PROXY, GET_SYS_PROXY, EXIT_NO_INTERNET 
:: VER: V18 02/24/2020  Added option for NODEJS_INSTALLED_OS: AUTO to detect OS on new installs'
:: VER: V18 02/24/2020  Move all tmp files and downloads to %temp%
:: VER: V18 02/24/2020  Added option to install GIT which installs curl
:: VER: V19 02/24/2020  Fixed bug for OS detect, Set NodeJs to V12 for node-red-contrib-modbus because of @serialport install
:: VER: V20 02/25/2020  Add option to disable components to not install/update
:: VER: V20 02/25/2020  Updated display output after successful script.  Will display versions of installed components
:: VER: V20 02/25/2020  Added option for windows-build-tools.  Used for building native windows nodejs components.  NEEDS about ~3GB for install disable if using prebuild.
:: VER: V21 02/26/2020  Fixed bug in internet checking sub.  Would not fail with proper message on bad connection
:: VER: V22 03/03/2020  GIT will not download on GTU.....Fix https://aka.ms/easyfix51044
::                      https://support.microsoft.com/en-za/help/3140245/update-to-enable-tls-1-1-and-tls-1-2-as-default-secure-protocols-in-wi 
:: VER: V23 03/19/2020  Fix GIT OS version.  Was using NodeJs os version.  SE IOT installs 32bit.  Can not install 32bit GIT on 64bit system
:: VER: V24 04/14/2020  Fix GIT install.  If safe VBS_SAFE_PATH did not exist script would fail.  Fixed clean up of created directory at end of script
:: VER: V24 04/14/2020  Added option to install Node-Red Service using NSSM
:: VER: V25 10/29/2020  cURL that was installed did not work because it required the directory to be added to enviorment PATH variable
:: VER: V25 10/29/2020  Added option for adding additional nodes by adding new variable settings. See Setting notes how to add more.  Current included Examples:
:: VER: V25 10/29/2020  node-red-contrib-modbus, node-red-contrib-iiot-opcua, node-red-contrib-opcua, node-red-dashboard, node-red-contrib-cip-ethernet-ip, node-red-contrib-s7
:: VER: V26 01/06/2021  Made some updates so node-red-contrib-iiot-opcua will install correctly.  
:: VER: V26 01/06/2021  Changed the Order of GIT installing,  Add a sub for depends nodes that are required to install other nodes properly,  Create batch files for INSTALL/DELETE of SERVICE                    
:: VER: V27 01/12/2021  Added the ability to install ZIP nodes.  If ZIP is in the working directory of script it will install based the settings configured
:: VER: V28 01/13/2021  If found uses UNZIP from GIT to speed up installion.  If not found uses the slower VBS script 
:: VER: V29 09/20/2021  Added Opiton for Offline AOA node
:EOF