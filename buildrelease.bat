set platform=win-x64
set platform_path=build_win
mkdir %platform_path%
cd %platform_path%
cmake ..
cmake --build . --config Release --parallel 8
cd ..
powershell "Compress-Archive -Force -Path %platform_path%\Release\openxr-explorer.exe, %platform_path%\Release\xrsetruntime.exe -DestinationPath openxr-explorer-%platform%.zip"


REM set platform=uwp-x64
REM set platform_path=build_uwp
REM mkdir %platform_path%
REM cd %platform_path%
REM cmake .. -DCMAKE_SYSTEM_NAME=WindowsStore -DCMAKE_SYSTEM_VERSION='10.0' -DCMAKE_SYSTEM_PROCESSOR=aarch64
REM cmake --build . --config Release --parallel 8
REM cd ..
REM powershell "Compress-Archive -Force -Path %platform_path%\Release\openxr-explorer.appx, %platform_path%\Release\xrsetruntime.appx -DestinationPath openxr-explorer-%platform%.zip"


REM set platform=linux-x64
REM set platform_path=build_linux
REM mkdir %platform_path%
REM cd %platform_path%
REM wsl cmake .. -DCMAKE_BUILD_TYPE=Release
REM wsl cmake --build . --parallel 8
REM cd ..
REM powershell "Compress-Archive -Force -Path %platform_path%\openxr-explorer, %platform_path%\xrsetruntime -DestinationPath openxr-explorer-%platform%.zip"

