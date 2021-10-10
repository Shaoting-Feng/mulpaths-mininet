#!/usr/bin/python                                                                            
                                                                                             
from mininet.topo import Topo
from mininet.net import Mininet
from mininet.util import dumpNodeConnections
from mininet.log import setLogLevel

topos = {'mytopo':(lambda:myTopo())}
class myTopo(Topo):
	def build(self):
		switch1 = self.addSwitch('s1')
		switch2 = self.addSwitch('s2')
		switch3 = self.addSwitch('s3')
		host1 = self.addHost('h1')
		host2 = self.addHost('h2')
		host3 = self.addHost('h3')
		host4 = self.addHost('h4')
		self.addLink(host1, switch3)
		self.addLink(host2, switch1)
		self.addLink(host3, switch3)
		self.addLink(host4, switch2)
		self.addLink(switch1, switch2)
		self.addLink(switch1, switch3)
		self.addLink(switch3, switch2)
