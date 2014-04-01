import sys
import os
import csv
from string import Template
import time
def getInitPower(batType, weight):
	if (batType > 5) or (batType < 0):
		batType = 0
	if (weight <= 0):
		weight = 1
	if batType == 0:
		return 146000*weight
	elif batType == 1:
		return 400000*weight
	elif batType == 2: 
		return 130000*weight
	elif batType == 3:
		return 340000*weight 
	elif batType == 4: 
		return 140000*weight
	elif batType == 5:
		return 460000*weight
	else: 
		return 0

def runSim():
	with open("results.csv", 'w') as oFile:
		csWrite = csv.writer(oFile, delimiter=',',quotechar = '"',quoting=csv.QUOTE_ALL)
		for btype in range(0,6):
			print ("btype: ", btype)
			for mg in range(1000,10001, 1000):
				print ("weight: ", mg*0.0000000001)
				for pksz in range(0,11):
					CMD = './waf --run "scratch/changeableBat --InitEn={0} --PpacketSize={1}" > outputunrf.txt'
					print (pksz, "...")
					energy = str(getInitPower(btype,(mg*0.0000000001)))
					CM = CMD.format(energy, (2 ** pksz))
					os.system(CM)
					with open("outputunrf.txt", 'r') as iFile:
						outstring = ([btype,mg*0.0000000001,getInitPower(btype,mg),iFile.readline()[:-1], iFile.readline(), 2**pksz])
						csWrite.writerow(outstring)
						iFile.close()
if __name__ == "__main__":
	runSim()