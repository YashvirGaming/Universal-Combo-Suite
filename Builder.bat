@echo off
chcp 65001 >nul
title Building Universal Combo Suite
color 0E

echo ==================================================
echo      Building Universal Combo Suite with Nuitka
echo ==================================================
echo.

python -m nuitka ^
 --standalone ^
 --onefile ^
 --remove-output ^
 --jobs=12 ^
 --enable-plugin=tk-inter ^
 --include-package=customtkinter ^
 --include-package=PIL ^
 --windows-console-mode=disable ^
 --windows-icon-from-ico=icon.ico ^
 --include-data-files=icon.png=icon.png ^
 --output-dir=. ^
 universal_combo_suite.py

echo.
echo [*] Build complete! EXE is in the same folder.
pause
