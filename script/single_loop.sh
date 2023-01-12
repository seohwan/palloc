
mkdir $5

echo 0 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_1_0.csv 


echo 1 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_1_1.csv 

echo 2 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_1_2.csv 

echo 3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_1_3.csv 

echo 0,1 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_0_1.csv 


echo 0,2 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_0_2.csv 

echo 0.3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_0_3.csv 

echo 1,2 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_1_2.csv 

echo 1,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_1_3.csv 

echo 2,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_2_2_3.csv 

echo 0,1,2 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_3_0_1_2.csv 

echo 0,1,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_3_0_1_3.csv 

echo 0,2,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_3_0_2_3.csv 

echo 1,2,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_3_1_2_3.csv 

echo 0,1,2,3 > /sys/fs/cgroup/palloc/palloc.bins
taskset -c 4 sh memory_bandwidth_workload.sh $1 $2 $3 $4
mv memory_bandwidth_single-loop.csv ./$5/palloc_on_4_0_1_2_3.csv 
