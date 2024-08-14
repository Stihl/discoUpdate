# DISCORD INSTALL PROCESS
# Please read this and understand it, its short enough as it is...
# and if the API endpoint changes then it will be invalid so you need to know how to fix it on the fly.

# Get discord // This downloads the discord deb file as 'stable?platform=linux' 
# I dont like this naming but renaming after the wget/curl is pointless and I was having issues with curl/wget not renaming the version agnostic link's download.
curl -L -o discord.deb /dev/null https://discord.com/api/download/stable?platform=linux&format=deb
#wget -q -O debian.deb "https://discord.com/api/download/stable?platform=linux&format=deb" #What I think it should look like.


# Check the local directory for the downloaded file, In this case I wasn't having luck setting the output name so we end up with this instead.
found=$(find discord.deb)

# Find out if the deb file exists or if it failed to download/write
if [ $found = discord.deb ]; then
	dpkg -i discord.deb
else
	echo "The download either failed or the downloaded filename is wrong/doesn't exist"
fi

# Clean up the downloaded file after the install is finished.
rm discord.deb
