for j in *; 
do ffmpeg -i $j -vcodec libx264 -acodec aac -strict -2 ../../recoded/pTrainRecoded/Ev106/$j.mp4; 
done

# Encodes files in proper format for mp4 conversion
