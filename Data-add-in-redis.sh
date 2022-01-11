#Use_id & score will come from lb-3663553998042595328-2021-12-18 file.
while read line
do
user_id=`echo $line | awk -F',' '{print $1}'`
score=`echo $line |awk -F',' '{print $2}'`
echo -e "AUTH onmobile\n ZADD lb-3663553998042595328-2021-12-18 $score $user_id" |redis-cli 
done < /root/lb-3663553998042595328-2021-12-18
