import math

fname1 = "paper.csv"
fname2 = "paper_fixed.csv"

with open(fname2, 'w') as f2:
	with open(fname1, 'r') as f1:
	
		for line in f1.readlines():
		
			spl = line.split(",")
			
			if len(spl) < 4:
				continue
			
			f2.write(spl[0])
			f2.write(",")
			f2.write(";".join(spl[1:-2]))
			f2.write(",")
			f2.write(spl[-2])
			f2.write(",")
			f2.write(spl[-1])