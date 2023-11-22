#!/bin/bash

#***********************************************************#
#						script1.sh							#
#					author: nickolas 						#
#						22/11/2023							#
#															#
#		Creation files in folder (for homework 10)			#
#				  modification for lesson 11				#
#***********************************************************#

MYDIR=/home/$USER/myfolder	# каталог проекта

# set -n 			# проверка на синтаксические ошибки
# set -v			# вывод каждой команды до выполнения
# set -x			# вывод результата каждой команды

# если директория существует то удалить :
if [ -d "$MYDIR" ]; 
	then rm -r $MYDIR; 
fi	

# создать директорию
mkdir $MYDIR; 


# создать файл 001 с 2мя строками :
touch $MYDIR/001
# проверка создания файла с одной стрнокой
echo 'hello' > $MYDIR/001 2> /dev/null
if [ $? -eq 0 ]
then
  echo "Successfully created file 1 string"
else
  echo "Could not create file 1 string" >&2
fi

echo $(date) >> $MYDIR/001 2> /dev/null
# проверка создания файла с двумя стрнокоами
if [ $? -eq 0 ]
then
  echo "Successfully created file string 2"
else
  echo "Could not create file string 2" >&2
fi



# создать файл 002 с правами 777 :
touch $MYDIR/002
chmod 777 $MYDIR/002

# создать файл 003 с одной рамдомной строкой длиной 20 символов :
touch $MYDIR/003
echo 'head -c 100 /dev/random |base64|tail -c21' > $MYDIR/003 2

# проверка создания файла 003
if [ $? -eq 0 ]
then
  echo "Successfully created 003 file"
else
  echo "Could not create 003 file" >&2
fi


# создать пустые файлы 004 и 005 :

touch $MYDIR/004 2> /dev/null

# проверка создания файла 004
if [ $? -eq 0 ]
then
  echo "Successfully created 004 file"
else
  echo "Could not create 004 file" >&2
fi
touch $MYDIR/005 2> /dev/null

# проверка создания файла 005
if [ $? -eq 0 ]
then
  echo "Successfully created file 005"
else
  echo "Could not create file 005" >&2
fi
