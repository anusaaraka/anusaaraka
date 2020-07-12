import sys
import re
fp2 = open(sys.argv[2], 'w')
fp3 = open(sys.argv[3], 'w')
fp4 = open(sys.argv[4], 'w')
fp1 = open(sys.argv[1], "r")
f = fp1.readlines()
count = 0
flag = 0

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
    if count == 2 and i == "\n":
        fp3.write(";~~~~~~~~~~\n")
    if count == 3 and i == "\n":
        fp4.write(";~~~~~~~~~~\n")

    if count == 1 and (i.startswith("nsubjpass(") or i.startswith("nsubj(") or i.startswith("pcomp(") or i.startswith("prep(") or i.startswith("pobj(") or i.startswith("mwe(") or i.startswith("prt(") or i.startswith("possessive(") or i.startswith("cc") or i.startswith("dobj(") or i.startswith("case(") or i.startswith("nmod(")) and i != '\n':
        # Added 'dobj' for New version to handle Relative clause sentences. Ex: The girl who you called yesterday has arrived.
        lst = i.strip().split()
        id1 = lst[0].split('-')
        id2 = lst[1].split('-')
        rel_name = lst[0].split("(")
        fp2.write("(basic_rel_name-sids\t%s\tP%s\tP%s)\n" % (rel_name[0], re.findall(
            '\d+', id1[len(id1)-1])[0], re.findall('\d+', id2[len(id2)-1])[0]))
#            fp2.write(i)
    if count == 2 and i != "\n":
        #             fp3.write(i)
        lst = i.strip().split()
        id1 = lst[0].split('-')
        id2 = lst[1].split('-')
        rel_name = lst[0].split("(")
        fp3.write("(propogation_rel_name-sids\t%s\tP%s\tP%s)\n" % (rel_name[0], re.findall(
            '\d+', id1[len(id1)-1])[0], re.findall('\d+', id2[len(id2)-1])[0]))
    if count == 3 and i != "\n":
        lst = i.strip().split()
        id1 = lst[0].split('-')
        id2 = lst[1].split('-')
        rel_name = lst[0].split("(")
#            fp4.write(i)
        fp4.write("(rel_name-sids\t%s\tP%s\tP%s)\n" % (rel_name[0], re.findall(
            '\d+', id1[len(id1)-1])[0], re.findall('\d+', id2[len(id2)-1])[0]))


fp2.close()
fp3.close()
fp4.close()
