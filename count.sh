echo "enter file name"
read file
cat $file
f=$(cat $file)
char=`cat $file |wc -m`
line=`cat $file |wc -l`
c=`expr $char - $line`
echo "No. of characters:$c" 
word=`cat $file |wc -w`
echo "No. of words:$word"
space=0
alp=0
i=1
while [[ $i -le $char ]]
do
ch=`echo $f | cut -c $i`
if [ "$ch" == " " ] ; then
 space=`expr $space + 1`
fi
case $ch in
a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p|q|r|s|t|u|v|w|x|y|z)
alp=`expr $alp + 1`
esac
i=`expr $i + 1`
done
echo "No. of whitespaces:$space"
b=`expr $char - 1`
sc=`expr $b - $space - $alp`
echo "No. of special characters: $sc"

