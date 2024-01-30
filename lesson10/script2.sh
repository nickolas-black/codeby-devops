#! bin/bash

MYDIR=~/myfolder

if [ -d "$MYDIR" ]; 
	then 
	
	# сколько файлов в папке :
	qtyFiles=`ls $MYDIR | wc -l`
	echo 'quantity files :' $qtyFiles

	# сменить права файла 002 :
	chmod 664 ~/myfolder/002

	# удалить все пустые файлы :
	find $MYDIR -type f -empty -exec rm {} \;

	# удалить все строки кроме первой во всех оставшихся файлах :
	#ls $MYDIR | while read A; do echo "$A" ;done
	find $MYDIR -name '00*' | while read A; do 
		echo `head -1 "$A"` > "$A" ;
	done

fi	

