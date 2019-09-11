for j in *.wav;  do c=0;  
l=$(soxi -D $j);  
for st in 0 `seq 8 8 $l`;  
do stt=$(( $st+10 )); 
c=$(($c+1))
to=‘to’
sox $j ../10s_pieces/split${j%.*}_${c}_${st}to${stt}.wav trim $st 10; 
done; done
