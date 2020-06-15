# Piotr Makosiej
#!/bin/bash
suma=0;
i=0;
while read line
do
	if [ -z "$line" ]
	then
	continue
	fi
	tablica[i]=$line;
	suma=$[suma+line];
	i=$[i+1];
done
srednia=$[suma/i];
echo $srednia
wariancja=0;
for (( j=0; j<i; j++ ))
do
a=$[tablica[j]-srednia];
a=$[a*a];
wariancja=$[wariancja+a];
done
wariancja=$[wariancja/i];
echo $wariancja
