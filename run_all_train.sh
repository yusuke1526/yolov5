for file in `ls -1 ./scripts/train/025*.sh`
do
	echo $file
	sh $file
done
