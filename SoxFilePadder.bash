for j in *.wav;   
do c=$(soxi -D $j); 
if [ ${c%.*} -lt 10 ]; 
then r=$(python -c "print(10-$c)"); 
sox $j p$j pad 0 $r ; fi; 
done
