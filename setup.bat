@echo off
echo ============================================
echo  DOC VDC Dashboard - One-Time Setup
echo ============================================
echo.

git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed.
    echo Download it from https://git-scm.com/download/win then re-run this script.
    pause
    exit /b 1
)

set FOLDER=%USERPROFILE%\OneDrive - The O'Connell Companies, Inc\Desktop\Claude Code\processmechdash

echo Step 1: Initializing git repo in your folder...
cd /d "%FOLDER%"
git init
git branch -M main

echo.
echo Step 2: Connecting to GitHub...
git remote add origin https://github.com/nambrosino/processmechdash.git

echo.
echo Step 3: Pushing files to GitHub...
git add .
git commit -m "Initial dashboard setup"
git push -u origin main

echo.
echo ============================================
echo  Setup complete!
echo.
echo  FINAL STEP - Enable GitHub Pages:
echo  1. Go to https://github.com/nambrosino/processmechdash
echo  2. Click Settings - Pages
echo  3. Under "Branch" select "main" and click Save
echo  4. Your live URL will be:
echo     https://nambrosino.github.io/processmechdash
echo ============================================
echo.
pause
