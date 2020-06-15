# Piotr Makosiej
#!/bin/bash

read n

f0=0
f1=1

echo 0

for ((i=1;i<n;i++)); do
	echo $f1
	f2=$((f0+f1))
	f0=$f1
	f1=$f2
done