import sys
fp2 = open(sys.argv[2], 'w')
fp3 = open(sys.argv[3], 'w')
fp4 = open(sys.argv[4], 'w')
fp1= open(sys.argv[1],"r")
f = fp1.readlines();
count = 0
flag=0

for i in f:
        if "------------- basic dependencies ---------------" in i:
            count = 1
            continue
        if "---------- CCprocessed dependencies ----------" in i:
            count = 2
            continue
        if "----------- collapsed dependencies tree -----------" in i:
            count = 3
            continue
        if count == 1 and i == "\n":
            fp2.write(";~~~~~~~~~~\n")
        if  count == 2 and i == "\n":
             fp3.write(";~~~~~~~~~~\n")
        if  count == 3 and i == "\n":
             fp4.write(";~~~~~~~~~~\n")
        if count == 1 and (i.startswith("nsubjpass(") or i.startswith("nsubj(") or i.startswith("pcomp(") or i.startswith("prep(") or i.startswith("pobj(") or i.startswith("mwe(") or i.startswith("prt(") or i.startswith("possessive(") or i.startswith("cc") or i.startswith("dobj(")) and i != '\n':
#Added 'dobj' for New version to handle Relative clause sentences. Ex: The girl who you called yesterday has arrived. 
#        if count == 1 and  i != "\n":
             fp2.write(i)
        if count == 2 and  i != "\n":
             fp3.write(i)
        if count == 3 and  i != "\n":
             fp4.write(i)


fp2.close()
fp3.close()
fp4.close()

