import sys; 
RES_SWRK_TAB = []; count =0;
tran_cnt = 0; OTAR_TRAN3 = []
rst = open(sys.argv[1],"r")
ol_fail= open(sys.argv[2],'w')
inp='';sent='';sentence=''
a = ''; s = '';b = ''; res_count=0
for f in rst.readlines():
  	inp = sent
        sent = f
	if 'No Translatable Units for Res' in f:
	    ol_fail.write("failed\n")
	    sys.exit()
        if '*Original Input' in inp:
            sentence=sent
        if f == "\n":
           count = 0
        if "*RESOLVED SWORK RECORDS*" in f:
           count = 1
	   res_count+=1
        if count == 1:
           a = f.split()
	   if len(a)>=36:
               RES_SWRK_TAB.append(a)
        if rst.readlines() == "\n" and count == 1:
           count = 0
           RES_SWRK_TAB.append(a)
        if f == "*EOS*\n":
           tran_cnt = 0
        if "* OUTPUT TARGET ARRAYS IN tran3  *"  in f :
                tran_cnt = 3
        if tran_cnt == 3:
            OTAR_TRAN3.append(f.split())

if res_count >1:
   ol_fail.write("failed\n")

wrong=[]
for i in xrange(len(RES_SWRK_TAB)):
    wrong.append(RES_SWRK_TAB[i][13])

jnk=0
if '1' not in wrong:
		ol_fail.write("failed\n")
		jnk=1
		sys.exit()
#Ex. If you were a middle-class American without a job, who would you vote for.

if len(OTAR_TRAN3) <18 and len(sentence.split()) >1:
	ol_fail.write("failed\n")
	jnk=1
	sys.exit()
#Ex. John plays basketball well.

if jnk==0:
	ol_fail.write("passed\n")

ol_fail.close()
