import sys

#usage... 

#python SensorSim.py [PktSize] [Initial Energy] [TxPwer] [RxPwer] [Transmission Speed]

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
		sendTime = 1/float(connection.dataRate*(1/float(size)))
		self.TxMode(sendTime)
		to.RxMode(sendTime)
		return sendTime

class WirelessConnection:
	def __init__(self, n1, n2, dr):
		self.node1 = n1
		self.node2 = n2
		self.dataRate = dr

def stdPowerConsump(attacker, target, connection, pktSize):
	packetsSent = 0
	sze = pktSize
	attackEnergyExpended = 0
	TotalTime = 0
	#print "Attacker- " + str(attacker.addr) + " energy: " + str(attacker.init)
	#print "Target- " + str(target.addr) + " energy: " + str(target.init)
	while (target.init > target.Tx):
		TotalTime = TotalTime + attacker.send(sze, connection, target)
		#print "Packet Sent: " + str(sze) + " bits  " + str(attacker.addr) + " to " + str(target.addr)
		packetsSent = packetsSent + 1
	return str(packetsSent) + "," + str(TotalTime)

def rtePowerConsump(attacker, target, arbiNode, connect1, connect2, pktSize):
	packetsSent = 0
	sze = pktSize
	attackEnergyExpended = 0
	TotalTime = 0
	#print "Attacker- " + str(attacker.addr) + " energy: " + str(attacker.init)
	#print "Target- " + str(target.addr) + " energy: " + str(target.init)
	while (target.init > target.Tx):
		TotalTime = TotalTime + attacker.send(sze, connect1, target)
		#print "Packet Sent: " + str(sze) + " bits  " + str(attacker.addr) + " to " + str(target.addr)
		TotalTime = TotalTime + target.send(sze, connect2, arbiNode)
		#print "Packet Sent: " + str(sze) + " bits  " + str(target.addr) + " to " + str(arbiNode.addr)
		packetsSent = packetsSent + 1
	return str(packetsSent) + "," + str(TotalTime)

if __name__ == "__main__":
	pktSize = sys.argv[2]
	node1 = sensorNode(float(sys.argv[3]),float(sys.argv[4]),float(sys.argv[5]),2,1, "100.1.13.14")
	node2 = sensorNode(float(sys.argv[3]),float(sys.argv[4]),float(sys.argv[5]),2,1, "100.1.13.15")
	node3 = sensorNode(float(sys.argv[3]),float(sys.argv[4]),float(sys.argv[5]),2,1, "100.1.13.16")
	n1ton2 = WirelessConnection(node1,node2,float(sys.argv[6]))
	n2ton3 = WirelessConnection(node2,node3,float(sys.argv[6]))
	if sys.argv[1] == "-s":
		print "std" + "," + sys.argv[2] + "," + sys.argv[3] + "," +sys.argv[4] + "," +sys.argv[5] + "," +sys.argv[6] + "," +stdPowerConsump(node1, node2, n1ton2, pktSize)
	if sys.argv[1] == "-r":
		print "rte" + "," + sys.argv[2] + "," + sys.argv[3] + "," +sys.argv[4] + "," +sys.argv[5] + "," +sys.argv[6] + "," +rtePowerConsump(node1, node2, node3, n1ton2, n2ton3, pktSize)

