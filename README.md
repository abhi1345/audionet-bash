# Bash Scripts Used to Modify ~100 GB video/audio files
File Key:  
Sox"XXX": Modifies .wav files, depends on SoX utility  
• SoxFileCutter: Cuts every .wav file into 10s segments, names them based on timeframe. Preserves original.  
• SoxFilePadder: Pads any file less than 10 seconds with silence at end.  
• SoxFileRemover: Removes any file less than 10 seconds.   
• SoxFileChecker: Prints names of any file over 10 seconds, prints nothing if every file is ≤ 10.  
• SoxFileShorten: Cuts down any file over 10 seconds, accounting for errors in sox functions.  
