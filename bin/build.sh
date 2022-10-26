if ! box -v &> /dev/null
then
	echo -e "${B}Installing Global humbug/box package..."
    composer global require humbug/box
fi
box compile