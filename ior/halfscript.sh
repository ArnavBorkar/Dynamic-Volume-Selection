echo "Running for 9 GB"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus ./src/ior -t 128m -b 9g -s 3 -F -C -e
echo "t 128m has been completed"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus ./src/ior -t 512m -b 9g -s 3 -F -C -e
echo "t 512m has been completed"

