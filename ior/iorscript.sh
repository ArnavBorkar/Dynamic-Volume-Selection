sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=4 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=6 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=8 is done***********************************************************************"

echo "/////////////////////////////////////////////////////////////////////setting -t 2m //////////////////////////////////////////////////////////////////////"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 2m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=4 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 2m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=6 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 2m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=8 is done***********************************************************************"

echo "/////////////////////////////////////////////////////////////////////setting -t 4m //////////////////////////////////////////////////////////////////////"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=4 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=6 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=8 is done***********************************************************************"


echo "/////////////////////////////////////////////////////////////////////setting -t 4m //////////////////////////////////////////////////////////////////////"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=4 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=6 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 4m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=8 is done***********************************************************************"

echo "/////////////////////////////////////////////////////////////////////setting -t 8m //////////////////////////////////////////////////////////////////////"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 8m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=4 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 8m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=6 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 8m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 8m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=8 is done***********************************************************************"




echo "////////////////////////////////////////////////////////////Now starting single shared file/////////////////////////////////////////////////////////////"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 4 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -C -e
echo "**********************************************************************n=4 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 6 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -C -e
echo "**********************************************************************n=6 is done***********************************************************************"
sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 7 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -F -C -e
echo "**********************************************************************n=7 is done***********************************************************************"

sudo echo 1 > /proc/sys/vm/drop_caches
sudo mpirun --allow-run-as-root -n 8 --use-hwthread-cpus /mnt/beegfs/ior-3.3.0/src/ior -t 1m -b 16m -s 16 -C -e
echo "**********************************************************************n=8 is done***********************************************************************"
