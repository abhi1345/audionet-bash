for j in *;  do c=0;  
l=$(ffmpeg -i $j 2>&1 | grep "Duration"| cut -d ' ' -f 4 | sed s/,// | sed 's@\..*@@g' | awk '{ split($1, A, ":"); split(A[3], B, "."); print 3600*A[1] + 60*A[2] + B[1] }');  
for st in 0 `seq 8 8 $l`;  
do stt=$(( $st+10 )); 
c=$(($c+1))
to=‘to’
ffmpeg -i $j -ss 00:00:03 -t 00:00:08 -async 1 ${j}_${c}_${st}to${stt}.mp4;
done; done
