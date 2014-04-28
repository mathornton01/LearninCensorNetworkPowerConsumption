class packet:
	def __init__(self, size):
		self.sz = size

class sensorNode:
	def __init__(self, initEner, TxPow, RxPow, senPow, CompPow, address):
		self.init = initEner
		self.Tx = TxPow
		self.Rx = RxPow
		self.sense = senPow
		self.comp = CompPow
		self.addr = address
	def TxMode(self, time):
		self.init = self.init - (time*self.Tx)
		return time*self.Tx
	def RxMode(self, time):
		self.init = self.init - (time*self.Rx)
		return time*self.Rx
	def send(self, size, connection, to):
		self.TxMode(1/float(connection.dataRate*(1/float(size))))
		to.RxMode(1/float(connection.dataRate*(1/float(size))))

class WirelessConnection:
	def __init__(self, n1, n2, dr):
		self.node1 = n1
		self.node2 = n2
		self.dataRate = dr

def stdPowerConsump(attacker, target, connection):
	packetsSent = 0
	print "Attacker = "
	print "Address: " + str(attacker.addr)
	print "Energy: " + str(attacker.init)

	print "Target = "
	print "Address: " + str(target.addr)
	print "Energy: " + str(target.init)

	print "Connection = "
	print "stdWireless: " + "speed = " + str(connection.dataRate)
	while (target.init > 0):
		sze = 11
		attacker.send(sze, connection, target)
		print "Packet Sent: " + " Size = " + str(sze) + ": "
		print attacker.addr
		print "to"
		print target.addr
		packetsSent = packetsSent + 1
	print attacker.init
	print target.init
	print packetsSent

def rtePowerConsump(attacker, target, arbiNode, connect1, connect2):
	packetsSent = 0
	attackEnergyExpended = 0
	print "Attacker- " + str(attacker.addr) + " energy: " + str(attacker.init)
	print "Target- " + str(target.addr) + " energy: " + str(target.init)
	while (target.init > target.Tx):
		sze = 11
		attacker.send(sze, connect1, target)
		print "Packet Sent: " + str(sze) + " bits  " + str(attacker.addr) + " to " + str(target.addr)
		target.send(sze, connect2, arbiNode)
		print "Packet Sent: " + str(sze) + " bits  " + str(target.addr) + " to " + str(arbiNode.addr)
		packetsSent = packetsSent + 1
	print attacker.init
	print target.init
	print packetsSent



node1 = sensorNode(100,10,17,2,1, "100.1.13.14")
node2 = sensorNode(100,10,17,2,1, "100.1.13.15")
node3 = sensorNode(100,10,17,2,1, "100.1.13.16")
n1ton2 = WirelessConnection(node1,node2,100)
n2ton3 = WirelessConnection(node2,node3,100)
rtePowerConsump(node1, node2, node3, n1ton2, n2ton3)

