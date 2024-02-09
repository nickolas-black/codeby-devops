#! bin/bash

MYDIR=~/myfolder

# если директория существует то удалить :
if [ -d "$MYDIR" ]; 
	then rm -r $MYDIR; 
fi	

# создать директорию
mkdir $MYDIR; 


# создать файл 001 с 2мя строками :
touch ~/myfolder/001
echo 'hello' > ~/myfolder/001
echo `date` >> ~/myfolder/001

# создать файл 002 с правами 777 :
touch ~/myfolder/002
chmod 777 ~/myfolder/002

# создать файл 003 с одной рамдомной строкой длиной 20 символов :
touch ~/myfolder/003
echo `head -c 100 /dev/random |base64|tail -c21` > ~/myfolder/003

# создать пустые файлы 004 и 005 :
touch ~/myfolder/004
touch ~/myfolder/005

