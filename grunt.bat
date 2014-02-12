@ECHO off

SET /P project="Project Slug: "
cd /d c:\wamp\www\projects\%project%\%project%\wp-content\themes\%project%\_build

ECHO.
ECHO Running Grunt for %project%
ECHO.

SET /P task="Task: "
explorer .

ECHO.

if [%task%] == [] goto default
if NOT [%task%] == [] goto task  

:default
ECHO Running Default Task
ECHO.
ECHO Stop with CTRL+C
ECHO.
cmd /k grunt 

:task
cmd /k grunt %task%
