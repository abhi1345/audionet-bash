for j in *.wav;   
do c=$(soxi -D $j); 
if [ ${c%.*} -lt 10 ]; 
then rm $j;
 fi; 
done
