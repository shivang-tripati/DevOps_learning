apple_price=5
greeting="Hello    World!"

#A backslash "\" is used to escape special character meaning
echo "The price of an Apple today is: \$HK $PRICE_PER_APPLE"

#Encapsulating the variable name with ${} is used to avoid ambiguity
MyFirstLetters=ABC
echo "The first 10 letters in the alphabet are: ${MyFirstLetters}DEFGHIJ"

#Encapsulating the variable name with "" will preserve any white space values
#greeting='Hello        world!'
echo $greeting" now with spaces: $greeting"

#Variables can be assigned with the value of a command output. This is referred to as substitution. Substitution can be done by encapsulating the command with `` (known as back-ticks) or with $()
FILELIST=`ls`
MyFirstLetters=abddc
FileWithTimeStamp=$(mkdir -p  tmp/dir)/tmp/dir/file_$(/bin/date +%Y-%m-%d).txt
#when the script runs, it will run the command inside the $() parenthesis and capture its output.

echo "File with time stamp ${FileWithTimeStamp}"
