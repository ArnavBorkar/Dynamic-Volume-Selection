exec < /src/ior/file.csv
read header

while IFS="," read -r n t b s
do

	echo "Start Time : $current_time"
	echo "n=$n,s=$s,t=$t,b=$b"  #take it from d ifferent file
	sudo echo 1 > /proc/sys/vm/drop_caches
	sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t $tm -b $bm -s $s -F -C -e
	echo "End time : $current_time"
	echo "Delay Started : $current_time"
	#sleep 120
	echo "Delay Ended : $current_time"

	echo "/////////////////////////////////////////////////////////////////////////////////////////////////////////////"
	echo "Start Time : $current_time"
	echo "n=$n,s=$s,t=$t,b=$b"
	sudo echo 1 > /proc/sys/vm/drop_caches
	sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t $tm -b $bm -s $s -F -C -e
	echo "End time : $current_time"
	echo "Delay Started : $current_time"
	#sleep 120
	echo "Delay Ended : $current_time"

	echo "/////////////////////////////////////////////////////////////////////////////////////////////////////////////"
	echo "Start Time : $current_time"
	echo "n=$n,s=$s,t=$t,b=$b"
	sudo echo 1 > /proc/sys/vm/drop_caches
	sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t $tm -b $bm -s $s -F -C -e
	echo "End time : $current_time"
	echo "Delay Started : $current_time"
	#sleep 120
	echo "Delay Ended : $current_time"
done
