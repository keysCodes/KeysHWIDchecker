@echo off
title keysHWID
echo.
color 90
echo Welcome to Keys HWID Checker!
echo.
color 90 
:start
color 4  
cls                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
echo [91m       Disk Number
echo [90m==========================[97m
wmic diskdrive get serialnumber
echo [93m      Motherboard
echo [90m==========================[97m
wmic baseboard get serialnumber
echo [92m        SMBIOS
echo [90m==========================[97m
wmic path win32_computersystemproduct get uuid
echo [96m         GPU
echo [90m==========================[97m
wmic PATH Win32_VideoController GET Description,PNPDeviceID
echo [94m         RAM
echo [90m==========================[97m
wmic memorychip get serialnumber
echo [95m         Bios
echo [90m==========================[97m
wmic csproduct get uuid
echo [91m         CPU
echo [90m==========================[97m
wmic cpu get processorid
echo [92m         MAC
echo [90m==========================[97m
wmic path Win32_NetworkAdapter where "PNPDeviceID like '%%PCI%%' AND NetConnectionStatus=2 AND AdapterTypeID='0'" get MacAddress
echo Press any key to get your hardware serials again.
pause>nul
goto start