echo "print the string"
read string
echo "get the variance"
read variance

echo $string
echo $variance

if [ $string = $variance ]
then 
echo "ok"
 
elif [ $string != $variance ]
then
echo "not ok"
fi

