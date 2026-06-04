@echo off
echo ============================================
echo  DOC VDC Dashboard - Weekly Update
echo ============================================
echo.

set FOLDER=%USERPROFILE%\OneDrive - The O'Connell Companies, Inc\Desktop\Claude Code\processmechdash

if not exist "%FOLDER%\VDC Short Term Kanban.xlsx" (
    echo ERROR: "VDC Short Term Kanban.xlsx" not found in your folder.
    echo Make sure you saved your Planner export to:
    echo %FOLDER%\VDC Short Term Kanban.xlsx
    echo.
    pause
    exit /b 1
)

echo Pushing latest Kanban export to GitHub...
cd /d "%FOLDER%"
git add "VDC Short Term Kanban.xlsx"
git commit -m "Weekly update %date%"
git push

echo.
echo ============================================
echo  Done! Dashboard is live at:
echo  https://nambrosino.github.io/processmechdash
echo ============================================
echo.
pause
