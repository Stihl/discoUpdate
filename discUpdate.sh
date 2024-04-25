# DISCORD INSTALL PROCESS
# Get discord // This turns into 'download?platform=linux' when you get the result
wget -o /dev/null https://discord.com/api/download/stable?platform=linux&format=deb

found=$(find 'stable?platform=linux')

# Find out if the deb file exists or if it failed to download/write
if [ $found = 'stable?platform=linux' ]; then
	dpkg -i 'stable?platform=linux'
else
	echo "The download either failed or the downloaded filename is wrong/doesn't exist"
fi

rm 'stable?platform=linux'
