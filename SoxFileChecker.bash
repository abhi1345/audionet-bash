for j in *.wav; do l=$(soxi -D $j); 
if [ ${l%.*} -ne 10 ]
then echo $l;
echo $j;
fi; done
