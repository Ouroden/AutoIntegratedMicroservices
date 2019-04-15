@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  AutoIntegratedMicroservices startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and AUTO_INTEGRATED_MICROSERVICES_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\urn.cw.netkernel.services-1.1.1.jar;%APP_HOME%\lib\json-simple-1.1.jar;%APP_HOME%\lib\json-20090211.jar;%APP_HOME%\lib\vertx-web-3.3.3.jar;%APP_HOME%\lib\vertx-sync-3.3.3.jar;%APP_HOME%\lib\vertx-auth-common-3.3.3.jar;%APP_HOME%\lib\vertx-core-3.3.3.jar;%APP_HOME%\lib\ext.layer1-1.60.26.jar;%APP_HOME%\lib\module.standard-1.85.29.jar;%APP_HOME%\lib\cache.se-1.9.11.jar;%APP_HOME%\lib\layer0-1.130.57.jar;%APP_HOME%\lib\netkernel.impl-4.41.24.jar;%APP_HOME%\lib\netkernel.api-4.2.5.jar;%APP_HOME%\lib\netty-codec-http2-4.1.5.Final.jar;%APP_HOME%\lib\netty-handler-4.1.5.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.5.Final.jar;%APP_HOME%\lib\netty-resolver-dns-4.1.5.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.5.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.5.Final.jar;%APP_HOME%\lib\netty-codec-dns-4.1.5.Final.jar;%APP_HOME%\lib\netty-codec-4.1.5.Final.jar;%APP_HOME%\lib\netty-transport-4.1.5.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.5.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.5.Final.jar;%APP_HOME%\lib\netty-common-4.1.5.Final.jar;%APP_HOME%\lib\jackson-databind-2.7.4.jar;%APP_HOME%\lib\jackson-core-2.7.4.jar;%APP_HOME%\lib\quasar-core-0.7.5-jdk8.jar;%APP_HOME%\lib\jackson-annotations-2.7.0.jar;%APP_HOME%\lib\metrics-core-3.1.2.jar;%APP_HOME%\lib\kryo-3.0.3.jar;%APP_HOME%\lib\kryo-serializers-0.37.jar;%APP_HOME%\lib\guava-19.0.jar;%APP_HOME%\lib\reflectasm-1.10.1.jar;%APP_HOME%\lib\minlog-1.3.0.jar;%APP_HOME%\lib\objenesis-2.1.jar;%APP_HOME%\lib\protobuf-java-2.6.1.jar

@rem Execute AutoIntegratedMicroservices
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %AUTO_INTEGRATED_MICROSERVICES_OPTS%  -classpath "%CLASSPATH%" cw.vertx.Load %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable AUTO_INTEGRATED_MICROSERVICES_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%AUTO_INTEGRATED_MICROSERVICES_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
