# Dynamic Volume Selection for HPC Storage

The goal of this
research is to propose a new approach for scanning the
volumes of a BeeGFS file system and dynamically selecting
the best volume for each file, in order to improve the efficiency
and scalability of data management in BeeGFS.

### Early Work

The research problem addressed in this project was to
determine which of the three parallel file systems (Lustre,
BeeGFS, and Gluster) performs best in a HPC environment.
This was done by installing each file system on a cluster of
computers and evaluating their performance using a variety of
benchmarks. There have been a number of studies that have
compared the performance of different parallel file systems.
However, these studies have often focused on a single file
system or a small subset of systems. This project expanded
upon previous work by providing a more comprehensive
comparison of three popular parallel file systems

### Motivation

While working with various parallel file systems, we encountered several challenges related to data management, including performance bottlenecks, scalability issues, and manual data management processes. As part of our efforts to
address these challenges, we explored various parallel file
systems, including Lustre, GPFS, and BeeGFS.
While Lustre and GPFS offered many advanced features and
high performance, we found them to be complex and difficult
to manage, particularly in large-scale deployments. We also
found that these systems were often expensive and required
specialized expertise to install and configure.
In contrast, BeeGFS was easier to install and manage, while
also providing high performance and scalability for a wide
range of workloads. However, we noticed that BeeGFS lacked
some important features for our specific use case, such as the
ability to automatically select the optimal volume for each file
based on factors such as file size, access pattern, and storage
utilization. This limitation made managing data in BeeGFS a
time-consuming and error-prone manual process, particularly
for workloads with a large number of files.

## Research Problem

The research problem addressed in this paper is the lack
of an automated mechanism for selecting the optimal volume
for each file in a BeeGFS file system based on factors such
as file size, access pattern, and storage utilization. Without
such a mechanism, managing data in BeeGFS can be a time consuming and error-prone manual process, particularly for
workloads with a large number of files. The goal of this
research is to propose a new approach for scanning the
volumes of a BeeGFS file system and dynamically selecting
the best volume for each file, in order to improve the efficiency
and scalability of data management in BeeGFS.


## Getting Started

This project is live on the BeeGFS Cluster set up at Data, Systems and HPC Lab at BITS Goa. You need access to the Campus Network or hosted VPN in order to run the tests and benchmarks. Please contact the author for more details. 

### Know your cluster


| hostname      | BeeGFS module         | Operating System        | Hard-Disk              | Parent FS  | Mount Point 1     | Mount Point 2     | Targets inside |
| ------------- | --------------------- | ----------------------- | ---------------------- | ---------- | ----------------- | ----------------- | -------------- |
| dashlab       | Client                | Ubuntu 22.04.5 LTS      | 2TB                    | ext4       |                   |                   |                |
| dashlab2      | Client                | Ubuntu 20.04.5 LTS      | 2TB                    | ext4       |                   |                   |                |
| dashlab3      | Client                | Ubuntu 20.04.5 LTS      | 2TB                    | ext4       |                   |                   |                |
| dashlab4      | Client                | Ubuntu 20.04.5 LTS      | 2TB                    | ext4       |                   |                   |                |
| node1.dashlab  | Monitor & Management  | Ubuntu 20.04.5 LTS      | 2TB                    | ext4       | /myBeeGFS/mgmtd   |                   |                |
| node2.dashlab  | Metadata              | Rocky                   | A-500GB                | xfs        | /myBeeGFS/meta1   |                   |                |
| node3.dashlab  | Metadata              | Rocky                   | A-500GB                | xfs        | /myBeeGFS/meta2   |                   |                |
|                |                       |                         |                        |            |                   |                   |                |
| Blade Server   |                       |                         |                        |            |                   |                   |                |
| blade1.dashlab | Data Server           | Ubuntu                  | A-500GB + B-500GB + B-500GB | ext4 + xfs + xfs | /myBeeGFS/disk1 | /myBeeGFS/disk2 | 101,102        |
| blade2.dashlab | Data Server           | Ubuntu                  | A-500GB + B-500GB + B-500GB | ext4 + xfs + xfs | /myBeeGFS/disk1 | /myBeeGFS/disk2 | 201,202        |
| blade3.dashlab | Data Server           | Ubuntu                  | A-500GB + B-500GB + B-500GB | ext4 + xfs + xfs | /myBeeGFS/disk1 | /myBeeGFS/disk2 | 301,302        |



### Checking the FS


```
user@dashlab3:~$ beegfs-check-servers
Management
==========
node1 [ID: 1]: reachable at 10.8.1.11:8008 (protocol: TCP)

Metadata
==========
node2 [ID: 2]: reachable at 10.8.1.15:8005 (protocol: TCP)
node3 [ID: 3]: reachable at 10.8.1.49:8005 (protocol: TCP)

Storage
==========
blade1 [ID: 4]: reachable at 10.8.1.27:8003 (protocol: TCP)
blade2 [ID: 5]: reachable at 10.8.1.51:8003 (protocol: TCP)
blade3 [ID: 6]: reachable at 10.8.1.54:8003 (protocol: TCP)
```


### Checking the Storage Pools


```
user@dashlab3:~$ beegfs-ctl --liststoragepools
Pool ID   Pool Description                      Targets                 Buddy Groups
======= ================== ============================ ============================
      1            Default 401,402,501,502,601,602                                  

```


## Running the Benchmarks

The instructions for using the IOR Benchmarks are present in the script itself. 

## Built With

* [BeeGFS](https://doc.beegfs.io/latest/index.html) - The File System used
* [IOR](https://github.com/hpc/ior) - The benchmarking tool
* [ELK Stack](https://www.elastic.co/what-is/elk-stack) - Used to set up monitoring



