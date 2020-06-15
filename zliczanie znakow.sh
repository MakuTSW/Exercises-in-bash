# Piotr Makosiej
#!/bin/bash
read first;
if [ ${#first} -gt 1 ]
then
if [ ${first:1:1} = = ]
then
while read line
do
  sum=0;
  n=${#line};
  for (( i=0; $i<$n; i++ )) 
  do
    if [ ${first:0:1} = ${line:i:1} ]
    then
      sum=$[sum+1];
    fi
  done
  echo $sum
done
exit
fi
fi

first=`echo $first | tr A-Z a-z`
while read line
do
	line=`echo $line | tr A-Z a-z`
  sum=0;
  n=${#line};
  for (( i=0; $i<$n; i++ )) 
  do
    if [ ${first:0:1} = ${line:i:1} ]
    then
      sum=$[sum+1];
    fi
  done
  echo $sum
done
