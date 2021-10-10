#! /bin/sh
# both IPv4 and ARP are needed
ovs-ofctl add-flow s1 dl_type=0x0800,nw_dst=10.0.0.2,actions=output:1
ovs-ofctl add-flow s1 dl_type=0x0800,nw_dst=10.0.0.1,actions=output:3
ovs-ofctl add-flow s1 dl_type=0x0800,nw_dst=10.0.0.3,actions=output:3
ovs-ofctl add-flow s1 dl_type=0x0800,nw_dst=10.0.0.4,actions=output:2

ovs-ofctl add-flow s2 dl_type=0x0800,nw_dst=10.0.0.4,actions=output:1
ovs-ofctl add-flow s2 dl_type=0x0800,nw_dst=10.0.0.2,actions=output:2
ovs-ofctl add-flow s2 dl_type=0x0800,nw_dst=10.0.0.1,actions=output:3
ovs-ofctl add-flow s2 dl_type=0x0800,nw_dst=10.0.0.3,actions=output:3

ovs-ofctl add-flow s3 dl_type=0x0800,nw_dst=10.0.0.3,actions=output:2
ovs-ofctl add-flow s3 dl_type=0x0800,nw_dst=10.0.0.1,actions=output:1
ovs-ofctl add-flow s3 dl_type=0x0800,nw_dst=10.0.0.2,actions=output:3
ovs-ofctl add-flow s3 dl_type=0x0800,nw_dst=10.0.0.4,actions=output:4

ovs-ofctl add-flow s1 dl_type=0x0806,nw_dst=10.0.0.2,actions=output:1
ovs-ofctl add-flow s1 dl_type=0x0806,nw_dst=10.0.0.1,actions=output:3
ovs-ofctl add-flow s1 dl_type=0x0806,nw_dst=10.0.0.3,actions=output:3
ovs-ofctl add-flow s1 dl_type=0x0806,nw_dst=10.0.0.4,actions=output:2

ovs-ofctl add-flow s2 dl_type=0x0806,nw_dst=10.0.0.4,actions=output:1
ovs-ofctl add-flow s2 dl_type=0x0806,nw_dst=10.0.0.2,actions=output:2
ovs-ofctl add-flow s2 dl_type=0x0806,nw_dst=10.0.0.1,actions=output:3
ovs-ofctl add-flow s2 dl_type=0x0806,nw_dst=10.0.0.3,actions=output:3

ovs-ofctl add-flow s3 dl_type=0x0806,nw_dst=10.0.0.3,actions=output:2
ovs-ofctl add-flow s3 dl_type=0x0806,nw_dst=10.0.0.1,actions=output:1
ovs-ofctl add-flow s3 dl_type=0x0806,nw_dst=10.0.0.2,actions=output:3
ovs-ofctl add-flow s3 dl_type=0x0806,nw_dst=10.0.0.4,actions=output:4
