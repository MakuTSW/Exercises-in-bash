#Piotr Makosiej

ilosc=0;
while read line
do
    flag=0;
    for (( i=0; i<ilosc; i++ ))
    do
        #echo ${tablica[i]}
      if [ ${tablica[i]} = $line ]
     then
        tab[i]=$[tab[i]+1];
        flag=1;
        #echo xd
      fi
    done
    if [ $flag = 0 ]
    then
      tablica[ilosc]=$line;
      tab[ilosc]=1;
      ilosc=$[ilosc+1];
    fi
done
minn=10000;
for (( i=0; i<ilosc; i++ ))
do
  if [ ${tab[i]} -lt $minn ]
  then
  minn=${tab[i]};
   k=${tablica[i]};
   #echo ${tablica[i]}
  fi
done
echo $k $minn