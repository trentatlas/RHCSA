
-- INFO 
[root@bmf images]# qemu-img info RHCSA-UEFI-Q35-LAB1-D0.qcow2
image: RHCSA-UEFI-Q35-LAB1-D0.qcow2
file format: qcow2
virtual size: 93 GiB (99857989632 bytes)
disk size: 16.6 GiB
cluster_size: 65536
Format specific information:
    compat: 1.1
    compression type: zlib
    lazy refcounts: true
    refcount bits: 16
    corrupt: false
    extended l2: false
Child node '/file':
    filename: RHCSA-UEFI-Q35-LAB1-D0.qcow2
    protocol type: file
    file length: 16.6 GiB (17871798272 bytes)
    disk size: 16.6 GiB
[root@bmf images]# 


-- RESIZE
[root@bmf images]# qemu-img resize RHCSA-UEFI-Q35-LAB1-D0.qcow2 146G
Image resized.


-- INFO
trent@300:~$ ssh -X -Y -l rescue  -6  bmf-ipv6
The authenticity of host 'bmf-ipv6 (fd01::110)' can't be established.
ED25519 key fingerprint is SHA256:qql06U6x4ta7MBMMv0yxidFQtH8d+vtp9hprQ81B45E.
This key is not known by any other names
Are you sure you want to continue connecting (yes/no/[fingerprint])? yes
Warning: Permanently added 'bmf-ipv6' (ED25519) to the list of known hosts.

	== BAD MOTHER FUCKER ==
Last login: Sat Feb  8 15:31:05 2025 from fd01::101
[rescue@bmf ~]$ su - root
Password: 
[root@bmf ~]# cd /var/lib/libvirt/images/
[root@bmf images]# ls -lh
total 586G
-rw-rw-r--. 1 qemu qemu 840M Jan 19 11:40 composer-api-43dc61fe-3ecd-4d71-a5c5-b6b06505bb3c-disk.qcow2
-rw-------. 1 qemu qemu  94G Dec 28 14:39 RHCSA93MASTER.qcow2
-rw-r--r--. 1 qemu qemu  17G Feb  8 17:59 RHCSA-UEFI-Q35-LAB1-D0.qcow2
-rw-r--r--. 1 qemu qemu 4.7G Feb  8 18:00 RHCSA-UEFI-Q35-LAB2-D0.qcow2
-rw-r-----. 1 qemu qemu  54G Jan 18 17:09 rhel6.10.qcow2
-rw-r-----. 1 qemu qemu  74G Jan 22 21:25 rhel8.10.qcow2
-rw-r-----. 1 qemu qemu 419G Jan 22 21:25 RHEL8-INTELREPO.qcow2
-rw-r-----. 1 qemu qemu 100G Jan 22 21:25 RHEL8IPA0-DISK0REPO.qcow2
-rw-r-----. 1 qemu qemu  21G Jul 24  2024 rhel9.3RHCSA-LAB.qcow2
-rw-r-----. 1 qemu qemu  19G Dec 27 10:59 rhel9.4SCC.qcow2
-rw-r-----. 1 qemu qemu 3.2M Jul 14  2024 rhellab0-DISK0-clone.qcow2
-rw-r-----. 1 qemu qemu 7.6G Nov 20 18:39 ZeroToCCNA-disk1.img
[root@bmf images]# qemu-img info RHCSA-UEFI-Q35-LAB1-D0.qcow2
image: RHCSA-UEFI-Q35-LAB1-D0.qcow2
file format: qcow2
virtual size: 93 GiB (99857989632 bytes)
disk size: 16.6 GiB
cluster_size: 65536
Format specific information:
    compat: 1.1
    compression type: zlib
    lazy refcounts: true
    refcount bits: 16
    corrupt: false
    extended l2: false
Child node '/file':
    filename: RHCSA-UEFI-Q35-LAB1-D0.qcow2
    protocol type: file
    file length: 16.6 GiB (17871798272 bytes)
    disk size: 16.6 GiB
[root@bmf images]# qemu-img resize RHCSA-UEFI-Q35-LAB1-D0.qcow2 146G
Image resized.
[root@bmf images]# qemu-img info RHCSA-UEFI-Q35-LAB1-D0.qcow2
image: RHCSA-UEFI-Q35-LAB1-D0.qcow2
file format: qcow2
virtual size: 146 GiB (156766306304 bytes)
disk size: 16.6 GiB
cluster_size: 65536
Format specific information:
    compat: 1.1
    compression type: zlib
    lazy refcounts: true
    refcount bits: 16
    corrupt: false
    extended l2: false
Child node '/file':
    filename: RHCSA-UEFI-Q35-LAB1-D0.qcow2
    protocol type: file
    file length: 16.6 GiB (17871800832 bytes)
    disk size: 16.6 GiB


-- CREATE

[root@bmf images]# qemu-img create -f qcow2 RHCSA-UEFI-Q35-LAB1-D1.qcow2 73G
Formatting 'RHCSA-UEFI-Q35-LAB1-D1.qcow2', fmt=qcow2 cluster_size=65536 extended_l2=off compression_type=zlib size=78383153152 lazy_refcounts=off refcount_bits=16
[root@bmf images]# 

[root@bmf images]# qemu-img info RHCSA-UEFI-Q35-LAB1-D1.qcow2 
image: RHCSA-UEFI-Q35-LAB1-D1.qcow2
file format: qcow2
virtual size: 73 GiB (78383153152 bytes)
disk size: 196 KiB
cluster_size: 65536
Format specific information:
    compat: 1.1
    compression type: zlib
    lazy refcounts: false
    refcount bits: 16
    corrupt: false
    extended l2: false
Child node '/file':
    filename: RHCSA-UEFI-Q35-LAB1-D1.qcow2
    protocol type: file
    file length: 194 KiB (198144 bytes)
    disk size: 196 KiB
    Format specific information:
        extent size hint: 1048576
[root@bmf images]# 

