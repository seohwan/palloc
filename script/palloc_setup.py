import yaml
import os
from os import path
       
def palloc_setup():
    pid_list = []
    color_list = []

    with open('palloc_setup.yaml') as f:
        data = yaml.load(f, yaml.FullLoader)
        partition_num = data['partiton_num']
        
        for i in range(partition_num):
            pid_list= data['pid_list']
            color_list= data['color_list']
            core_list= data['core_list']

    for i in range(partition_num):
        cmd = "mkdir /sys/fs/cgroup/cpuset/partition" + str(i+1)
        if not os.path.exists("/sys/fs/cgroup/cpuset/partition" + str(i+1)):
            os.system(cmd)
        cmd = "echo "+ core_list[i] + " > /sys/fs/cgroup/cpuset/partition" + str(i+1) + "/cpuset.cpus"
        os.system(cmd)
        cmd = "echo "+ pid_list[i] + " > /sys/fs/cgroup/cpuset/partition" + str(i+1) + "/tasks"
        os.system(cmd)
        
        cmd = "mkdir /sys/fs/cgroup/palloc/partition" + str(i+1)
        if not os.path.exists("/sys/fs/cgroup/palloc/partition" + str(i+1)):
            os.system(cmd)
        cmd = "echo "+ color_list[i] + " > /sys/fs/cgroup/palloc/partition" + str(i+1) + "/palloc.bins"
        os.system(cmd)
        cmd = "echo "+ pid_list[i] + " > /sys/fs/cgroup/palloc/partition" + str(i+1) + "/tasks"
        os.system(cmd)
        


if __name__ == '__main__':
    palloc_setup()
    