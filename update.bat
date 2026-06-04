@echo off
echo ============================================
echo  DOC VDC Dashboard - Weekly Update
echo ============================================
echo.

set FOLDER=%USERPROFILE%\OneDrive - The O'Connell Companies, Inc\Desktop\Claude Code\processmechdash

:: Check Excel file exists
if not exist "%FOLDER%\VDC_Short_Term_Kanban.xlsx" (
    echo ERROR: VDC_Short_Term_Kanban.xlsx not found in your folder.
    echo Make sure you saved your Planner export to:
    echo %FOLDER%\VDC_Short_Term_Kanban.xlsx
    echo.
    pause
    exit /b 1
)

echo Pushing latest Kanban export to GitHub...
cd /d "%FOLDER%"
git add VDC_Short_Term_Kanban.xlsx
git commit -m "Weekly update %date%"
git push

echo.
echo ============================================
echo  Done! Dashboard is live at:
echo  https://nambrosino.github.io/processmechdash
echo ============================================
echo.
pause
