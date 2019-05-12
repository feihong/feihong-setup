# Lenovo T480

## Windows 10

- Get and store product key: `wmic path SoftwareLicensingService get OA3xOriginalProductKey`
- Remove bloatware
  - Settings > Update & Security > Recovery > Learn how to start fresh with a clean installation of Windows
  - Fresh start > Additional info > Get started
- Install Chocolatey package manager
  - Windows key and search for 'command prompt'
  - Right-click, choose 'run as administrator'
  - `@"%SystemRoot%\System32\WindowsPowerShell\v1.0\powershell.exe" -NoProfile -InputFormat None -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))" && SET "PATH=%PATH%;%ALLUSERSPROFILE%\chocolatey\bin"`
- `choco install firefox rufus`
- Install Debian via Windows Subsystem for Linux
  - Windows+x
  - Windows Powershell (Admin)
  - `Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`
  - Wait, then hit Enter to restart
  - Open Microsoft Store
  - Install Debian
  
## Debian

- Download [netinstall image](https://www.debian.org/distrib/)
- Create bootable USB drive using rufus
- Do full shutdown by holding Shift when clicking 'Shut down'
- Turn on computer
- Press F12 to bring up boot menu

## Sources

- https://www.groovypost.com/howto/find-your-windows-10-product-key/
- https://www.howtogeek.com/265054/how-to-easily-reinstall-windows-10-without-the-bloatware/
- https://docs.microsoft.com/en-us/windows/wsl/install-win10
- https://www.howtogeek.com/331053/how-to-mount-removable-drives-and-network-locations-in-the-windows-subsystem-for-linux/
