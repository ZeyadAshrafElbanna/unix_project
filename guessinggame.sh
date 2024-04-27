function guessinggame {
  local files=$(ls . | wc -w) 
  local usiles=0
  echo "please enter the number of files in the directory : "
  read ufiles
  while [[ $ufiles -ne $files ]]
    do
     if [[ $ufiles -gt $files ]]
      then
       echo "your guess is too high"
       read ufiles
     elif [[   $ufiles -lt $files ]]
      then
       echo "your guess is too low"
       read ufiles
     fi
    done
 echo "you was correct!!"   
}

guessinggame
