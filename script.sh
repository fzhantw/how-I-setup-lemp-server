EXIT_SIGNAL="0";
while :
do
printf "Please Choose Some Action:\n"
printf "1. install oh my zsh \n"
printf "2. install vim\n"
printf "3. install web server\n"
printf "4. install composer\n"
printf "5. build a virtual host\n"
printf "put in q to leave\n"
read -p "Your choice:" choise

case $choise in
	1) sh ./src/oh_my_zsh.sh;;
	2) sh ./src/vim.sh;;
	3) sh ./src/lemp.sh;;
	4) sh ./src/composer.sh;;
	5) sh ./src/build_site.sh;;
	q) exit;;
	*) printf "Invalid Choice, Please Insert Again\n";read null;;
esac
done
