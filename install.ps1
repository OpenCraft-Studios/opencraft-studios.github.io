# Create opencraft directory
New-Item -Path "opencraft" -ItemType "Directory"

# Change directory
Set-Location "opencraft"

# Download file opencraft.jar
Invoke-WebRequest -Uri "https://github.com/OpenCraft-Studios/OpenCraft/releases/download/auto-release/opencraft.jar" -OutFile "opencraft.jar"

# Execute it
java -jar "opencraft.jar"
