for j in *.wav;
do l=$(soxi -D $j); 
if [ ${l%.*} -ne 10 ];
then
sox $j ${j:1} trim 0 10;
rm $j;
fi;
done
