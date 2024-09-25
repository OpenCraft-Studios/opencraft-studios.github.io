# === Download WGET ===
  Write-Host -NoNewLine -ForegroundColor "white" " >  "
  Write-Host            -ForegroundColor "green" "Downloading WGET...."

  Invoke-WebRequest -Uri "https://eternallybored.org/misc/wget/1.21.4/32/wget.exe" -OutFile ".\wget.exe"

  Write-Host -NoNewLine -ForegroundColor "white" " >  "
  Write-Host            -ForegroundColor "green" "Done!"

#
#  I'm doing this because WGET is way faster
#  than powershell in downloads.  I don't want
#  to take a large amount of time just by
#  downloading a jar bruh
#

# Download opencraft.jar with WGET
  Write-Host -NoNewLine -ForegroundColor "white" " >  "
  Write-Host            -ForegroundColor "green" "Downloading OpenCraft using WGET...."

  .\wget.exe -q -O opencraft.jar https://github.com/OpenCraft-Studios/OpenCraft/releases/download/auto-release/opencraft.jar

  Write-Host -NoNewLine -ForegroundColor "white" " >  "
  Write-Host            -ForegroundColor "green" "Done!"

# Delete any wget traces
  Remove-Item *wget* -Force

# Execute opencraft
  java -jar "opencraft.jar"
