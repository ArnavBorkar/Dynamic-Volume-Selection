sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1g -b 4g -s 4 -F -C -e
echo "**********************************************************************b=4 t=1 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 2g -b 4g -s 4 -F -C -e
echo "**********************************************************************b=4 t=2 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4g -b 4g -s 4 -F -C -e
echo "**********************************************************************b=4 t=4 is done***********************************************************************"

echo "**********************************************************************block size=4 is done***********************************************************************"

echo "**********************************************************************block size=9 is starting***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1g -b 9g -s 3 -F -C -e
echo "**********************************************************************b=9 t=1 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 3g -b 9g -s 3 -F -C -e
echo "**********************************************************************b=9 t=3 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 2 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 9g -b 9g -s 3 -F -C -e
echo "**********************************************************************b=9 t=9 is done***********************************************************************"

echo "**********************************************************************block size=9 is done***********************************************************************"

