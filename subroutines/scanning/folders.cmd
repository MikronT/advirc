call design\logLogo.cmd
setlocal EnableDelayedExpansion

echo.[File System]>>%log%
echo.   [AppData Folders]>>%log%

for /f "delims=" %%i in (files\databases\rewrited\dirs\appData.db) do (
  for /f "delims=" %%j in (files\databases\rewrited\folders\appData.db) do (
    if exist "%%i\%%j" (
      echo.%%i\%%j>>%cleaning-folders%
      echo.    - %%i\%%j>>%log%
      echo.[Folder] %%i\%%j
      set /a foundObjects+=1
    ) else (
      echo.Folder not found - %%i\%%j>>%debugLog%
    )
    echo.!foundObjects!>temp\foundObjects
  )
)

echo.Script Completed>>%log%
echo.>>%log%
echo.>>%log%
echo.>>%log%

echo.[File System]>>%log%
echo.   [Program Folders]>>%log%

for /f "delims=" %%i in (files\databases\rewrited\dirs\programFiles.db) do (
  for /f "delims=" %%j in (files\databases\rewrited\folders\programFiles.db) do (
    if exist "%%i\%%j" (
      echo.%%i\%%j>>%cleaning-folders%
      echo.    - %%i\%%j>>%log%
      echo.[Folder] %%i\%%j
      set /a foundObjects+=1
    ) else (
      echo.Folder not found - %%i\%%j>>%debugLog%
    )
    echo.!foundObjects!>temp\foundObjects
  )
)

echo.Script Completed>>%log%
echo.>>%log%
echo.>>%log%
echo.>>%log%

echo.[File System]>>%log%
echo.   [System Drive Folders]>>%log%

for /f "delims=" %%i in (files\databases\rewrited\folders\systemDrive.db) do (
  if exist "%systemDrive%\%%i" (
    echo.%systemDrive%\%%i>>%cleaning-folders%
    echo.    - %systemDrive%\%%i>>%log%
    echo.[Folder] %systemDrive%\%%i
    set /a foundObjects+=1
  ) else (
    echo.Folder not found - %systemDrive%\%%i>>%debugLog%
  )
  echo.!foundObjects!>temp\foundObjects
)

echo.Script Completed>>%log%
echo.>>%log%
echo.>>%log%
echo.>>%log%

echo.[File System]>>%log%
echo.   [User Profile Folders]>>%log%

for /f "delims=" %%i in (files\databases\rewrited\dirs\userProfile.db) do (
  for /f "delims=" %%j in (files\databases\rewrited\folders\userProfile.db) do (
    if exist "%%i\%%j" (
      echo.%%i\%%j>>%cleaning-folders%
      echo.    - %%i\%%j>>%log%
      echo.[Folder] %%i\%%j
      set /a foundObjects+=1
    ) else (
      echo.Folder not found - %%i\%%j>>%debugLog%
    )
    echo.!foundObjects!>temp\foundObjects
  )
)

echo.Script Completed>>%log%
echo.>>%log%
echo.>>%log%
echo.>>%log%

echo.[File System]>>%log%
echo.   [Windows Directory Folders]>>%log%

for /f "delims=" %%i in (files\databases\rewrited\folders\winDir.db) do (
  if exist "%winDir%\%%i" (
    echo.%winDir%\%%i>>%cleaning-folders%
    echo.    - %winDir%\%%i>>%log%
    echo.[Folder] %winDir%\%%i
    set /a foundObjects+=1
  ) else (
    echo.Folder not found - %winDir%\%%i>>%debugLog%
  )
  echo.!foundObjects!>temp\foundObjects
)

echo.Script Completed>>%log%
echo.>>%log%
echo.>>%log%
echo.>>%log%

endlocal
%module-sleep% 3
exit