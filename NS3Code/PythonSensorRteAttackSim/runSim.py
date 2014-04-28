import os
from string import Template
import subprocess
def runSim():
	with open('out.txt', 'w') as outFile:
		CMDS = 'python SensorSim.py -s {0} {1} {2} {3} {4}'
		CMDR = 'python SensorSim.py -r {0} {1} {2} {3} {4}'
		for i in range(1,50):
			for j in range(1,111,1):
				for k in range(1,60,1):
					for l in range(1,60,1):
						for m in range(58, 76643, 1000):
							CMS = ['python', 'SensorSim.py', '-s', str(2**i),str(j*0.125),str(k*0.1),str(l*0.1),str(m)]
							output = subprocess.Popen( CMS, stdout=subprocess.PIPE ).communicate()[0]
							CMR = ['python', 'SensorSim.py', '-r', str(2**i),str(j*0.125),str(k*0.1),str(l*0.1),str(m)]
							output1 = subprocess.Popen( CMR, stdout=subprocess.PIPE ).communicate()[0]
							outFile.write(output)
							outFile.write(output1)

if __name__ == "__main__":
	runSim()