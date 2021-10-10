# mulpaths-mininet

It's important to remember that Ethernet bridges (also known as learning switches) will flood packets that miss in their MAC tables. They will also flood broadcasts like ARP and DHCP requests. This means that if your network has loops or multiple paths in it, it will not work with the default ovs-controller and controller controllers, nor NOX's pyswitch, nor POX's l2_learning, which all act as learning switches/Ethernet bridges.

ovs-ofctl can add flow rules on the switches, so I use ovs-ofctl command to help solve the problem.
