import sys, string
pada_fp= open("ol_pada.dat","a")
have_root = ['has','had','have']
lupwa_prep = ['again','later','here','there','somewhere','anywhere','everywhere','now','outside','longer','alone','next','upstairs','downstairs','upwards','downwards','above','down','up','where']
#NOTE: kriyA-lupwa_prep_saMbanXI  is now changed to kriyA-aXikaraNavAcI_avyaya 
cat = { '1':'noun','2':'verb','3':'adverb','4':'adjective','5':'pronoun','6':'adverb','8':'Clausal Constructions','11':'preposition','12':'verb','13':'preposition','14':'determiner','15':'determiner','16':'Arithmates','17':'Negatives','18':'Relatives/Interrogatives','19':'conjunction','20':'punctuation'}
kAlavAcI = ['today','night','yesterday','tomorrow','week','month','year','sunday','monday','tuesday','wednesday','thursday','friday','saturday','january','february','march','april','may','june','july','august','september','october','november','december','season','evening','day','hour','morning']
kri = ''; upa = ''
prep_dict_word={}; prep_dict_id={}; prep_dict_id_semwrk={}; prep_dict_word_semwrk={}
switch68_pos=[]
# The preposition dictionaries and the list switch68_pos contain information which can be used further. All other lists and variables are for temporary storage.

#--------------------------#information from 'RESOLVED SWORK RECORDS'#--------------------------------------------
RES_SWRK_TAB = []; count =0; prk=0; INPUT = []; inp_cnt =0
tran_cnt = 0; OP_TAR_ARR_TRAN3 = []
i=4; semwrk_prep=[]
SCON_FOR_tran4 = []; st4c =0
inp=''; sent=''; sent_len=0
tran1_components = []; tran1_head_wrds = []; tran1 = []; c = 0; tran2 = []
sconId_resId = {}
trn3=[]
for f in file(sys.argv[1]):
	inp = sent
	sent = f
	if 'No Translatable Units for Res' in f:
		pada_fp.close()
		sys.exit()
	if '*Original Input' in inp:
		sent_len = len(f.split())
        if f == "\n":
           count = 0
           inp_cnt = 0
           st4c = 0
        if "INPUT:" in f:
           inp_cnt = 1
        if inp_cnt == 1:
           l = f.split()
	   if len(l)>1:
              INPUT.append(l)
        if "*RESOLVED SWORK RECORDS*" in f:
	   prk=1
           count = 1
        if count == 1:
            a = f.split()
            if len(a)>=36:
                RES_SWRK_TAB.append(a)
        if f == "\n" and count == 1:
           count = 0
        if f == "*EOS*\n":
           tran_cnt = 0
        if "* OUTPUT TARGET ARRAYS IN tran1  *"  in f :
                tran_cnt = 1	
        if "* OUTPUT TARGET ARRAYS IN tran2  *"  in f :
                tran_cnt = 2
        if tran_cnt == 2:
            T2 = f.split()
            if len(T2)>0:
                if 'SWORKO' in T2:
                    mc=0
                    for each in xrange(len(T2)):
                        if T2[each] == '=' and each <= 4:
                            mc=1
                        if mc == 1:
                            a=T2[each+1:len(T2)]
                            tran2.append(a)
                            mc=0
        if "* OUTPUT TARGET ARRAYS IN tran3  *"  in f :
                tran_cnt = 3
        if tran_cnt == 1:
            T1 = f.split()
	    if len(T1)>0:
		if 'SCONPO' in T1:
		    tran1_components.append(T1)
	        if 'SWORKO' in T1:
		    mc=0
		    for each in xrange(len(T1)):
			if T1[each] == '=' and each <= 4:
			    mc=1
			if mc == 1:
                            a=T1[each+1:len(T1)]
                            tran1.append(a)
		            tran1_head_wrds.append(a[3])
                            mc=0
        if tran_cnt == 3:
            OP_TAR_ARR_TRAN3.append(f.split())
            t3 = f.split()
            if len(t3)>0:
                if 'SWORKO' in t3:
                    mc=0
                    for each in xrange(len(t3)):
                        if t3[each] == '=' and each <= 4:
                            mc=1
                        if mc == 1:
                            a=t3[each+1:len(t3)]
                            trn3.append(a)
                            mc=0
 
	#---------------------------information from semwrk values (containing prepositions)---------
	# All the semwork values which contain prepositions are stored.
	if prk==1 and "***SEMWRK VALUES" in f:
	    prk=2
	    continue
	if prk==2:
	    semwrk_prep.append(f.split())
	    i=4
	    while 1:
		if i<len(semwrk_prep[0]):
		    if semwrk_prep[0][i]=='13':
			prk=3
			break
		    else:
			i=i+4
	 	else:
	       	    break
	if prk==3:
	     prk=1
	elif prk==2:
	     semwrk_prep.remove(f.split())
	     prk=1
	     continue
        if "THE SCON FOR tran4" in f:
           st4c = 1
        if st4c == 1:
           b = f.split()
           SCON_FOR_tran4.append(b)
           if len(b) == 21:
	        sconId_resId[b[0]] = b[10]
        if f == "\n" and count == 1:
            st4c = 0
            SCON_FOR_tran4.append(b)
            if len(b) == 21:
	        sconId_resId[b[0]] = b[10]

	
scon_res_id_map = open("scon_id_res_id.dat", "w")
for i in xrange(1,len(SCON_FOR_tran4)-1):
    if len(SCON_FOR_tran4[i]) == 21 and len(SCON_FOR_tran4[i+1]) == 20 :
	  scon_res_id_map.write("(scon4_id-res_id\t%s\t%s)\n"% (SCON_FOR_tran4[i][0], SCON_FOR_tran4[i][10]))

#--------------------------------Parser_id mapping -------------------------------------
punc_list = ["-", "[", "]", "{", "}", "<", ">", "!", "/", ".", "=", "?", "(", "'", ",", ":", ";", ")"]; wrdid = 1; tmp_count = 0; wrd_lst = []
ol_res_id_map = open("ol_resid_wordid_mapping_tmp.dat", "w")
for i in xrange(len(RES_SWRK_TAB)):
    group_str = ''
    if RES_SWRK_TAB[i][34] == '1' and RES_SWRK_TAB[i][35] == 'bos':
        ol_res_id_map.write("(ol_res_id-word_id-word\tP%s\t0\tbos)\n"% (RES_SWRK_TAB[i][0]))
    elif RES_SWRK_TAB[i][35] in punc_list:
        ol_res_id_map.write("(ol_res_id-word_id-word\tP%s\t-\tpunctuation_mark)\n"% (RES_SWRK_TAB[i][0]))
    elif int(RES_SWRK_TAB[i][34]) > 1:
        grp_num_lst = []
        wrd_lst = RES_SWRK_TAB[i][35:]
        if len(wrd_lst) == 1 and int(RES_SWRK_TAB[i][34]) > 1:
            ol_res_id_map.write("(ol_res_id-word_id-word\tP%s\t%s\t%s)\n"%(RES_SWRK_TAB[i][0], wrdid , RES_SWRK_TAB[i][35].lower()))
            wrdid += 1
            #Ex. I met him last in a market-place.
	elif len(wrd_lst) > 1:
            for j in xrange(len(wrd_lst)):
                group_str = group_str + ' ' + wrd_lst[j]
                grp_str = group_str.strip()
                if j == len(wrd_lst)-1:
                    wrdid += int(RES_SWRK_TAB[i][34])-1
                    ol_res_id_map.write("(ol_res_id-word_id-word\tP%s\t%s.1\t%s)\n" % (RES_SWRK_TAB[i][0], wrdid, grp_str))
                    ol_res_id_map.write("(current_id-group_members\t%s.1\t" % wrdid)
                    grp_num_lst = []
                for k in xrange(int(RES_SWRK_TAB[i][34])):
                    if wrdid-k not in grp_num_lst:
    	                grp_num_lst.append(wrdid-k)
        	        grp_num_lst.sort()
                	grp_num_str = ''
                for l in xrange(len(grp_num_lst)):
                    grp_num_str = grp_num_str + ' ' + str(grp_num_lst[l])
                    grp_num_str = grp_num_str.strip()
            ol_res_id_map.write("%s)\n" % grp_num_str)
            ol_res_id_map.write(";The relation name 'current_id-group_members' is used temporarely and should be replaced by 'head_id-group_members'.\n")
        wrdid += 1
    elif  int(RES_SWRK_TAB[i][34]) == 1:
        ol_res_id_map.write("(ol_res_id-word_id-word\tP%s\t%s\t%s)\n" % (RES_SWRK_TAB[i][0], wrdid , RES_SWRK_TAB[i][35].lower()))
        wrdid += 1

ol_res_id_map.close()

#---------------------------------infromation from semwrk values (containing verbs)---------------
# All the semwork values which contain verbs are stored
prk=0; semwrk_verb=[]
for fp in file(sys.argv[1]):
	if "*RESOLVED SWORK RECORDS*" in fp and (prk==0):
    	    prk=1
	if prk==1 and "***SEMWRK VALUES" in fp:
    	    prk=2
     	    continue		
	if prk==2:
             semwrk_verb.append(fp.split())
             i=4
             while 1:
            	if i<len(semwrk_verb[0]):
                	if semwrk_verb[0][i]=='2':
	  		     prk=3
	 		     break
	        	else:
	 		      i=i+4
	        else:
       			break    
	if prk==3:
    	    prk=1
	elif prk==2:
    	    semwrk_verb.remove(fp.split())
    	    prk=1
    	    continue
#----------------------------------------------------------------------------------

id_word={}; word_id={}; id_count={}; id_form_dic={}; id_wrd_lst_count_word={}; id_subset_dic={}; id_superset_dic={}; RESid_cat_dic={}
for i in xrange(len(RES_SWRK_TAB)):
	id_word[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][35]
        word_id[RES_SWRK_TAB[i][35]]= RES_SWRK_TAB[i][0]
        id_count[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][34]
        id_form_dic[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][4]
        id_subset_dic[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][5]
        id_superset_dic[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][6]
        RESid_cat_dic[RES_SWRK_TAB[i][0]]= RES_SWRK_TAB[i][2]
	if int(RES_SWRK_TAB[i][34]) > 1:
       	    id_wrd_lst_count_word[RES_SWRK_TAB[i][0]] = RES_SWRK_TAB[i][34:]

k=1
map_id = open("ol_original_numeric_word.dat","w")
for i in xrange(len(INPUT)):
      if INPUT[i][0] == 'INPUT:':
         if INPUT[i][1] == ',' or INPUT[i][1] == '?' or INPUT[i][1] == '!' or INPUT[i][1] == ';':
            map_id.write("(parser_numid-word-remark %d  \"%s\"  -)\n" % (k,INPUT[i][1]))
         else:
            map_id.write("(parser_numid-word-remark %d  %s  -)\n" % (k,INPUT[i][1]))
         k =k+1
map_id.close()

map_id1 = open("ol_numeric_word.dat","w")
id_keys = id_wrd_lst_count_word.keys()
for i in open("ol_original_numeric_word.dat", "r"):
	a = i.split()
	if a[1] in id_keys:
		wrd_values = id_wrd_lst_count_word[a[1]]
		for j in  xrange(1, len(wrd_values)):
			map_id1.write("(parser_numid-word-remark\t%s\t%s\t%s\n" % (id_keys[0], wrd_values[j], a[3]))
			j += 1
	elif  a[2] == '(':
              map_id1.write("(parser_numid-word-remark\t%s\tleft_paren\t%s\n" % (a[1], a[3]))
        elif a[2] == ')':
              map_id1.write("(parser_numid-word-remark\t%s\tright_paren\t%s\n" % (a[1], a[3]))
	else:
		map_id1.write("(parser_numid-word-remark\t%s\t%s\t%s\n" % (a[1], a[2], a[3]))
map_id1.close()

#-------------------#information  from 'OUTPUT TARGET ARRAYS IN tran1/2/3'--------------------------
# The following computatio is performed to remove the discrepancy in word-id created by switch-68. The field containing switch-68 is removed, it can be appended at the end of list, if required.
goru_counter=0
for i in xrange(len(OP_TAR_ARR_TRAN3)):
	if 'SWORKO' in OP_TAR_ARR_TRAN3[i]:
		if OP_TAR_ARR_TRAN3[i][0].endswith(')'):
                        OP_TAR_ARR_TRAN3[i].insert(0, 'hpg')
#--------------------------------
for i in xrange(len(semwrk_prep)):
    for k in xrange(len(switch68_pos)):
	for j in xrange(7,len(semwrk_prep[i])):
	    if int(semwrk_prep[i][j])>int(switch68_pos[k]):
		semwrk_prep[i][j]=str(int(semwrk_prep[i][j])-1)                   	

for i in xrange(len(semwrk_verb)):
    for k in xrange(len(switch68_pos)):
	for j in xrange(7,len(semwrk_verb[i])):
	    if int(semwrk_verb[i][j])>int(switch68_pos[k]):
		semwrk_verb[i][j]=str(int(semwrk_verb[i][j])-1)
#----------------------------------------------------------------------
#-----------------------------------------build preposition dictionary from semwrk values----------------------
prep_counter=2
tmp_prep=''
tmp_head=''
for j in xrange(0,len(semwrk_prep)):
    for i in xrange(4,len(semwrk_prep[j]),4):
        if semwrk_prep[j][i]=='13' and i+7<=len(semwrk_prep[j]):
            for hr in xrange(len(RES_SWRK_TAB)):
                if RES_SWRK_TAB[hr][0]==semwrk_prep[j][i+3]:
                    tmp_prep=RES_SWRK_TAB[hr][35]
                if RES_SWRK_TAB[hr][0]==semwrk_prep[j][i+7]:
                    tmp_head=RES_SWRK_TAB[hr][35]
            if semwrk_prep[j][i+7] in prep_dict_id_semwrk.keys() and prep_dict_id_semwrk[semwrk_prep[j][i+7]]!=semwrk_prep[j][i+3]:
                prep_dict_id_semwrk[semwrk_prep[j][i+7]+'_part_'+`prep_counter`]=semwrk_prep[j][i+3]
                prep_dict_word_semwrk[tmp_head+'_part_'+`prep_counter`]=tmp_prep
                prep_counter+=1
            else:
                prep_dict_id_semwrk[semwrk_prep[j][i+7]]=semwrk_prep[j][i+3]
                prep_dict_word_semwrk[tmp_head]=tmp_prep
#NOTE : There are two separate preposition dictionaries built from semwrk values and tran3 output. If more than one preposition is attached to a word, it is indicated by the word '_part_'.
#-------------------------------------------------------------------------------------------------------------

#get information from 'THE SWORK TABLE IN tran4'

tran3_components = []; tran3 = []; pobj_prep={}
for i in xrange( len(OP_TAR_ARR_TRAN3)):
        if len(OP_TAR_ARR_TRAN3[i]) > 0:
                if 'SCONPO' in OP_TAR_ARR_TRAN3[i]:
                        tran3_components.append( OP_TAR_ARR_TRAN3[i])
                if "SWORKO" in OP_TAR_ARR_TRAN3[i]:
                        tran3.append( OP_TAR_ARR_TRAN3[i])
		if 'SCONHF' in OP_TAR_ARR_TRAN3[i] and "SWORKO" in OP_TAR_ARR_TRAN3[i-5]: #ex. The metric system is designed around a unit of distance, the meter, a unit of mass, the kilogram, and a time unit, the second.
			pobj_prep[OP_TAR_ARR_TRAN3[i-5][7]]= OP_TAR_ARR_TRAN3[i][-1]


SWRK_TAB_TRN4_0 = []
SWRK_TAB_TRN4_1 = []
SWRK_TAB_TRN4 = []
for i in xrange(len(tran3)):
    SWRK_TAB_TRN4_0.append(tran3[i][4:8])
for i in xrange(len(tran3)):
    a = tran3[i][8:-2]
    if len(a) > 1:
        sukh=''
        for j in xrange(len(a)):
            sukh = sukh + a[j] + '_'
        SWRK_TAB_TRN4_1.append(sukh[0:-1])
    else:
        SWRK_TAB_TRN4_1.append(a[0])

for i in xrange(len(SWRK_TAB_TRN4_0)):
    c = ''
    c = c + SWRK_TAB_TRN4_1[i]
    for j in xrange(len(SWRK_TAB_TRN4_0[i])):
        c = c + ' ' + SWRK_TAB_TRN4_0[i][j]
    SWRK_TAB_TRN4.append(c.split())

count=0; inp_line = ''; sent = ''; verb_particle = ''
id_comp_wrd_space = []; id_comp_wrd_un = []
samAsa_wrds_with_underscore = ''; samAsa_wrds_with_space = ''; samAsa = ''
Verb_Particle_list =[]
for i in file(sys.argv[1]):
	inp_line = sent
	sent = verb_particle
	verb_particle = i
	if '*Original Input' in inp_line:
		sent_wrd_list = sent.split()
	if 'SEMTAB MATCH. RESTORE & EXECUTE THE FOLLOWING RULE' in inp_line and 'SEMTAB RULE: LEVEL' in sent and '(PART)' in verb_particle:
		Verb_Particle_list.append(verb_particle)

######## Get sentence type info ########
aux_verb_lst = ['do','did','does','is','are','am','was','were','will','shall','should','can','could','would','has','have','may','May']
aux_verb_lst_small = ['did','does','is','are','am','was','were','will','shall','should','can','could','would','has','have','may','May']
sent_type = open("sent_type.dat","w")
if len(SWRK_TAB_TRN4_0) > 0 and SWRK_TAB_TRN4_0[0][1] == '909' and (SWRK_TAB_TRN4_0[0][2]=='1' or SWRK_TAB_TRN4_0[0][2]=='2') and id_word['2'] in aux_verb_lst:
        sent_type.write("(yes_no_question)\n")
#Ex. Do you want this book?

if len(SWRK_TAB_TRN4_0) > 0 and SWRK_TAB_TRN4_0[0][1] == '909' and SWRK_TAB_TRN4_0[0][2] ==  '2':
      sent_type.write("(wh_question)\n")
#Ex. Where did he go?

if len(SWRK_TAB_TRN4_0) > 0 and SWRK_TAB_TRN4_0[0][1] == '900' and SWRK_TAB_TRN4_0[0][2] == '2' and id_word['2'] in aux_verb_lst_small:
        sent_type.write("(yes_no_question)\n")

if len(SWRK_TAB_TRN4_0) > 0 and SWRK_TAB_TRN4_0[0][1] == '900' and SWRK_TAB_TRN4_0[0][2] ==  '2':
      sent_type.write("(sAmAnya_vAkya)\n")
#Ex. Rama is beating a boy . 

for i in xrange(len(SWRK_TAB_TRN4)):
    if SWRK_TAB_TRN4[i][1] == '2' and SWRK_TAB_TRN4[i][3] == '20':
        sent_type.write("(AjFArWaka_vAkya)\n")
#Ex. Tell me an imperative sentence.

num_fp = open("ol_number.dat","w")
for i in xrange(len(RES_SWRK_TAB)):
   if (RES_SWRK_TAB[i][2] == '1' or RES_SWRK_TAB[i][2]=='5') and (RES_SWRK_TAB[i][4] == '1' or RES_SWRK_TAB[i][4] == '4'):
        num_fp.write("(parser_id-number P%s  s)\n" % (RES_SWRK_TAB[i][0]))
   elif (RES_SWRK_TAB[i][2] == '1' or RES_SWRK_TAB[i][2]=='5') and (RES_SWRK_TAB[i][4] == '2' or RES_SWRK_TAB[i][4] == '7'):
        num_fp.write("(parser_id-number P%s  p)\n" % (RES_SWRK_TAB[i][0])) 
   else:
	num_fp.write("(parser_id-number P%s  -)\n" % (RES_SWRK_TAB[i][0]))
num_fp.close()

#------------------------###Get category (POS) information ######--------------------
color_list = ["blue", "gray", "yellow", "orange", "red", "violet", "maize", "green", "umber", "thistle", "mulberry" ,"pink", "white", "black"]
cat_fp = open("ol_original_cat_info.dat","w")

for i in xrange(len(RES_SWRK_TAB)):
    cat_fp.write("(parser_id-cat_coarse %s  %s)\n" % (RES_SWRK_TAB[i][0], cat[RES_SWRK_TAB[i][2]]))
cat_fp.close()

#The part below changes the category noun to adjective when the wc is 1 and form is 13 or 23.
cat_fr = open("ol_original_cat_info.dat", "r")
cat_fp1= open("ol_cat_info_tmp.dat","w")
cat_file = cat_fr.readlines()

def return_prep(x):
   if x != '0':
       if (RESid_cat_dic[x] == '11' or RESid_cat_dic[x] == '13') and int(id_count[x]) > 1:
   	   p = id_wrd_lst_count_word[x]
	   a = p[1:]
	   prep = string.join (a, "_")
	   return prep
       else:
	   return id_word[x]

not_v_n_lst = ['smoking','meeting','hearing','interesting','training']
for i in cat_file:
   a = i.split()
   if  id_form_dic[a[1]] == '23' or id_form_dic[a[1]] == '60': 
      cat_fp1.write("(parser_id-cat_coarse %s  adjective)\n" % a[1])
#Ex.  There are many tissues of FAT in our body. He saw the BROKEN window.

   elif a[1] not in tran1_head_wrds and id_form_dic[a[1]] == '13':
      cat_fp1.write("(parser_id-cat_coarse %s  adjective)\n" % a[1])
#Ex. A fat UGLY boy had to eat many fruits.
   elif a[1] in tran1_head_wrds and id_form_dic[a[1]] == '13' and id_word[a[1]] in color_list:
      cat_fp1.write("(parser_id-cat_coarse %s  adjective)\n" % a[1])
#Ex. Mary's shoes are red . 

   elif int(a[1]) > 2 and (id_word[str(int(a[1])-1)] == 'more' or id_word[str(int(a[1])-1)] == 'less'):
      cat_fp1.write("(parser_id-cat_coarse %s  adjective)\n" % a[1])

   elif RESid_cat_dic[a[1]] == '1' and id_form_dic[a[1]] == '50' and id_word[a[1]] not in not_v_n_lst:
      cat_fp1.write("(parser_id-cat_coarse %s  verbal_noun)\n" % a[1])
#Ex. The game of life is played for WINNING.

   else:
      cat_fp1.write("(parser_id-cat_coarse %s  %s\n" % (a[1], a[2]))
cat_fp1.close()

#The part below changes the category noun to proper noun if the word starts with capital letter or is in proper_N_lst.
propN_lst = ['John','Mary','Rama','Sita','Seeta','Gita','Roja','Sriram','Dipti','Amba','Lakshmi','Laxmi','Sonal','Sonia','Gandhi','India','Delhi','Aperna','Lipi','Meena','Shital','Vineet','Sukhada','Veena','Aditi','Shibani','Manju','Grace','UK']
cat_fp3= open("ol_cat_info_tmp.dat","r")
wrd_fp= open("ol_numeric_word.dat","r")
cat_file2 = cat_fp3.readlines()
wrd_f = wrd_fp.readlines()
cat_fp4= open("ol_cat_info.dat","w")
for i in xrange(len(cat_file2)):
	a = cat_file2[i].split()
	b = wrd_f[i].split()
	if a[1] == b[1] and (id_subset_dic[b[1]] == '859' or b[2] in propN_lst or (b[2][:-2] in propN_lst and b[2][-2:] == "'s")):
		cat_fp4.write("(parser_id-cat_coarse\tP%s\tPropN)\n" % a[1])
#Ex. MEERA's shoes are red.
	elif a[1] == b[1] and id_subset_dic[b[1]] == '207' and id_superset_dic[b[1]] == '5':
		cat_fp4.write("(parser_id-cat_coarse\tP%s\tPropN)\n" % a[1])
#Ex. MARY's shoes are red.
	elif a[1] == b[1] and b[2].istitle() and i > 1 and b[2] != 'I':
		cat_fp4.write("(parser_id-cat_coarse\tP%s\tPropN)\n" % a[1])
		i += 1
	else:
		cat_fp4.write("(parser_id-cat_coarse\tP%s\t%s\n" % (a[1], a[2]))
		i += 1
cat_fp1.close()
cat_fp3.close()
cat_fp4.close()
#-----------------------------------------------------------------------
SWRK_TAB_TRN4.reverse() #reverse the matrix
SWRK_TAB_TRN4_V = []
j=0
for i in xrange(len(SWRK_TAB_TRN4)):
      if SWRK_TAB_TRN4[i][1] == '2' or SWRK_TAB_TRN4[i][1] == '12' or SWRK_TAB_TRN4[i][0] == 'EOS' or SWRK_TAB_TRN4[i][0] == 'BOS' or SWRK_TAB_TRN4[i][0] == 'CLS-BOS' or SWRK_TAB_TRN4[i][0] == 'CLS-EOS' or SWRK_TAB_TRN4[i][1]=='20':
         SWRK_TAB_TRN4_V.append(SWRK_TAB_TRN4[i])
         j = j+1
SWRK_TAB_TRN4_V1 = SWRK_TAB_TRN4_V
#----------------------------------#### Get Relation information ####--------------------------------
matrix = [[]]
for j in xrange(1,len(OP_TAR_ARR_TRAN3)):
        if len(OP_TAR_ARR_TRAN3[j])>0:
                if OP_TAR_ARR_TRAN3[j][0].startswith('('):
                        matrix[0].append(OP_TAR_ARR_TRAN3[j])
		elif OP_TAR_ARR_TRAN3[j][0].startswith('hpg'):
                        matrix[0].append(OP_TAR_ARR_TRAN3[j])
                else:
                        matrix[0][-1].extend(OP_TAR_ARR_TRAN3[j])
#modified on 13-07-10 for "I saw the man who you love." type sentences where 'you' was missing in pada and relations.

rel_fp = open("ol_original_relation_tmp.dat","w")
B = ''; S = ''; O = ''
for i in OP_TAR_ARR_TRAN3:
        B = S
        S = O
        O = i
        if 'BOS' in B and 'OPADRO' in S and 'SCONPO' in O:
            for j in O:
                if j == '2':
                    rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction P2)\n")
#Ex. However the user needs some training to use the software effectively.

# Within pada relations: 
id_word_tuple = id_word.items()
kriyA_id = ''; upasarga_id = ''
for each in xrange(len(Verb_Particle_list)):
    line = Verb_Particle_list[each].split('(')
    kri = line[0].lower()
    upa = line[1].split()
    upasarga = upa[1].lower()
    if '/' in upasarga:
	ups = upasarga.split('/')
	u_w = id_word.values()
	for i in xrange(len(ups)):
	    if ups[i] in u_w:
		upasarga = ups[i]
                #Ex. Delhi rejoices every november-december when the fabulous qutub festival of classical music and dance comes around.
    for i in open("morph.dat", "r"):
        a = i.split()
        if len(a) > 9 :
            word = a[4][:-1]
            root = a[6][:-1]
	    if kri == root:
	        for j in id_word_tuple:
		    if j[1] == word or j[1] == root:
			r = root.upper()
                	kriyA_id = j[0]
	             	upasarga_id = word_id[upasarga]
    if kriyA_id != '':
        rel_fp.write("(prep_id-relation-parser_ids - kriyA-upasarga  P%s\tP%s)\n"% (kriyA_id, upasarga_id))
#Ex.    I will GIVE UP smoking. My car broke down when I reached Delhi.

#------------------------------------compute verb adverb relations------------------------------------
#_-------------------------Also build preposition dictionary from tran3 Output------------------------
y=''; prep_counter=2
for i in xrange(0,len(tran3_components)):
	if tran3[i][4]=='2':
	    for x in tran3_components[i]:
		if x!='SCONPO':
		    y=x
		    if int(x)<=len(sent_wrd_list):
			for j in xrange(len(RES_SWRK_TAB)):
			    if RES_SWRK_TAB[j][0]==y:
				if (RES_SWRK_TAB[j][2]=='3' or RES_SWRK_TAB[j][2]=='6') and id_word[RES_SWRK_TAB[j][0]] not in kAlavAcI:# and id_word[RES_SWRK_TAB[j][0]] not in lupwa_prep:
				    rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]],RES_SWRK_TAB[j][0]))
#Ex. 4 the 'id_word[RES_SWRK_TAB[j][0]] not in kAlavAcI' condition: 'The girl who you called yesterday has arrived.'# He told me why he was here and what he was doing.

	if tran3[i][4]=='1':
	    for x in tran3_components[i]:
		if x!='SCONPO':
		    y=x
		    if int(x)<=len(sent_wrd_list):
			for j in xrange(len(RES_SWRK_TAB)):
			    if RES_SWRK_TAB[j][0]==y:
				if (RES_SWRK_TAB[j][2]=='13' or RES_SWRK_TAB[j][2]=='11'):
				    prep_dict_id[tran3[i][7]]=RES_SWRK_TAB[j][0]
				    prep_dict_word[tran3[i][8]]=RES_SWRK_TAB[j][35]
# The above verb-adverb relations computed from tran3 output.
for i in xrange(0,len(matrix[0])):
    if matrix[0][i][-2]=='SCONHF':
	for j in xrange(len(RES_SWRK_TAB)):
	    if RES_SWRK_TAB[j][0]==matrix[0][i][-1]:
		if (RES_SWRK_TAB[j][2]=='3' or RES_SWRK_TAB[j][2]=='6'):
		    rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (matrix[0][i][7],RES_SWRK_TAB[j][0]))
		elif (RES_SWRK_TAB[j][2]=='13' or RES_SWRK_TAB[j][2]=='11'):
		    if matrix[0][i][8] in prep_dict_word.keys():
		        prep_dict_id[matrix[0][i][7]+'_part_'+`prep_counter`]=RES_SWRK_TAB[j][0]
		        prep_dict_word[matrix[0][i][8]+'_part_'+`prep_counter`]=RES_SWRK_TAB[j][35]
		        prep_counter+=1
		    else:
			prep_dict_id[matrix[0][i][7]]=RES_SWRK_TAB[j][0]
			prep_dict_word[matrix[0][i][8]]=RES_SWRK_TAB[j][35]
# The above verb-adverb relations computed from semwrk values.
#--------------------------------------------------------------------------------------------------------------
conjunction_list = ['so','that','because','where','when','but','without','after']
jo_samA = ['who','which','whom','that','where']
copula = ['is','are','am', 'was','were']
RaRTI_viSeRaNa = ['his','her','my','your','our','its','their']
prerak_kriyA = ['make', 'made','makes','making','has','had','having']
alfa = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
aux_verb_lst = ['do','did','does','is','are','am','was','were','will','shall','should','can','could','would','has','have','may','May']
prep_lst = ['aboard','about','above','across','after','against','along','alongside','amid','amidst','among','amongst','around','as','aside','astride','at','athwart','atop','barring','before','behind','below','beneath','beside','besides','between','beyond','by','circa','concerning','despite','down','during','except','excluding','failing','following','for','from','in','including','inside','into','like','mid','minus','near','next','notwithstanding','of','off','on','onto','opposite','out','outside','over','pace','past','per','plus','qua','regarding','round','since','than','through','throughout','till','times','to','toward','towards','under','underneath','unlike','until','up','upon','versus','via','with','within','without','worth']

got_obj = ''
got_prep_rel = ''
#Across pada relations:
lupwa_sub_kri=''
if tran3[1][4]=='2' and tran3[1][5] == '886' and tran3[2][4]=='1':
    rel_fp.write("(prep_id-relation-parser_ids - lupwa_subject_kriyA-subject_samAnAXikaraNa  P%s P%s)\n"%(tran3[1][7], tran3[2][7]))
    lupwa_sub_kri=tran3[1][7]
#Ex. Be quiet, she said. Be a doctor.

for i in xrange(len(tran1)):
        if tran1[i][0] == '2' and (tran1[i+1][0] == '3' or tran1[i+1][0] == '1') and tran1[i+1][4] in kAlavAcI and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex. The girl who you called yesterday has arrived. 
        if tran1[i-1][2] == '96' and tran1[i][0] == '1' and tran1[i+1][0] == '2' and tran1[i-1][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i-1][3]]))
#Ex. Last week I saw a great movie.
        elif tran1[i][0] == '1' and tran1[i][1] == '174'  and tran1[i][4] in kAlavAcI and tran1[i+1][5] != 'SWITCH68' and tran1[i][5] != 'SWITCH68' :
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. The party that night was a big success.

	elif tran1[i][0] == '2' and tran1[i-1][0] == '1'  and tran1[i-1][4] in kAlavAcI and tran1[i][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i-1][3]]))
#Ex. The party last week was a big success.

	elif tran1[i][0] == '2' and tran1[i+1][0] == '1' and tran1[i+2][0] == '3' and tran1[i+2][0] not in lupwa_prep and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+2][3]]))
#Ex.    Terrorists TREAT people very BADLY.

	elif tran1[i-2][0] == '1' and tran1[i][0] == '1' and tran1[i][4] in kAlavAcI and tran1[i][5] != 'SWITCH68' and tran1[i-2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran1[i-2][3]], sconId_resId[tran1[i][3]]))
#Ex.    We thank you all for coming this evening.

        elif (tran1[i][0] == '2' and tran1[i+1][0] == '3' and  tran1[i+1][4] not in lupwa_prep  and tran1[i+1][4][-2:] == 'ly') and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
	   rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex.    The snake who swallowed the rat HISSED LOUDLY.

	elif tran1[i][0] == '2' and tran1[i+1][0] == '3' and tran1[i+1][1] == '753' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex.    It plunged first its nose into the river.

        elif tran1[i][0] == '3' and (tran1[i][1] == '322' or tran1[i][1] == '302') and tran1[i+1][0] == '2' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. The mystery of the Nixon tapes was never solved. As I suspected, he had already left.

	elif tran1[i-1][0] == '3' and tran1[i-1][1] == '322'  and tran1[i+1][0] == '2' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i-1][3]]))
#Ex. He never really recovered from the shock of his wife's death.
 
        elif tran1[i-1][0] == '20' and tran1[i-1][1] == '410' and tran1[i-1][2] == '19' and tran1[i-1][4] == 'how' and tran1[i+2][0] == '2' and tran1[i-1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+2][3]], sconId_resId[tran1[i-1][3]]))
#Ex. he told me how I should do homework.

        elif tran1[i][0] == '3' and tran1[i][1] == '18' and tran1[i][2] == '1' and tran1[i-1][0] == '2' and tran1[i][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i-1][3]], sconId_resId[tran1[i][3]]))
#Ex. He is working harder than usual.

        elif tran1[i][0] == '2' and tran1[i+1][0] == '3' and (tran1[i+1][1] == '697' or tran1[i+1][1] == '354') and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-upasarga  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex. The soldiers were called out for the war.
#Ex: The whole village was washed away by the floods.

	elif tran1[i-1][0] == '2' and tran1[i][0] == '13' and (tran1[i][1] == '697' or tran1[i][1] == '749') and tran1[i][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-upasarga  P%s\tP%s)\n" % (sconId_resId[tran1[i-1][3]], sconId_resId[tran1[i][3]]))
#Ex. She took out water from a deep well .
#Ex. He gave up his lucrative law practice for the sake of the country.

	elif tran1[i-2][0] == '2' and tran1[i][0] == '3' and tran1[i][4] in lupwa_prep and tran1[i][5] != 'SWITCH68' and tran1[i-2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-upasarga  P%s\tP%s)\n" % (sconId_resId[tran1[i-2][3]], sconId_resId[tran1[i][3]]))
#Ex: They divided the money up among the children.

	elif tran1[i-2][0] == '2' and tran1[i][0] == '3' and tran1[i][1] == '697' and tran1[i][5] != 'SWITCH68' and tran1[i-2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-upasarga  P%s\tP%s)\n" % (sconId_resId[tran1[i-2][3]], sconId_resId[tran1[i][3]]))
#Ex. We picked them out for her . 

        elif ((tran1[i][0] == '2' or tran1[i][0] == '12') and tran1[i+1][0] == '2') and (tran1[i+2][0] == '12') and (tran1[i+3][0] == '1') and tran1[i+2][0] in prep_lst and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
	    prep = sconId_resId[tran1[i+2][3]]
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i+3][3]]))
            #print "(hhhhhhP%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i+3][3]])
	    got_prep_rel = prep
	    prep = ''
#Ex.    All are GOING TO SCHOOL.

        elif tran1[i-2][0] == '1' and tran1[i-1][0] == '13' and tran1[i][0] == '2' and tran1[i][1] == '551' and tran1[i-1][4] in prep_lst and tran1[i][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68' and tran1[i-2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids P%s viSeRya-%s_saMbanXI  P%s\tP%s)\n" % (tran1[i-1][3], return_prep(tran1[i-1][3]), tran1[i-2][3], tran1[i][3]))
#Ex. I have doubt about inviting him 

        elif tran1[i-2][0] == '2' and tran1[i-1][0] == '19' and tran1[i-1][4] in prep_lst and tran1[i][0] == '1' and tran1[i][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68' and tran1[i-2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (tran1[i-1][3], return_prep(tran1[i-1][3]), tran1[i-2][3], tran1[i][3]))
            #print "ssssss_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (tran1[i-1][3], return_prep(tran1[i-1][3]), tran1[i-2][3], tran1[i][3])
#Ex. He is known as the Einstein of India.  

        elif tran1[i][0] == '2' and tran1[i+1][0] == '13' and tran1[i+1][4] in prep_lst and tran1[i+2][0] == '1' and (upasarga_id == ''or tran1[i+1][4] != id_word[upasarga_id]) and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
            prep = sconId_resId[tran1[i+1][3]]
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+2][3]]))
            #print "ttttser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+2][3]])
            got_prep_rel = prep
            prep = ''
#Ex.  The man we saw when we went to Paris is here.

        if tran1[i][0] == '2' and tran1[i+1][0] == '3' and (tran1[i+2][0] == "11" or tran1[i+2][0] == "13" ) and tran1[i+3][0] == '1' and tran1[i+2][0] in prep_lst and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68' and tran1[i+3][5] != 'SWITCH68':
	    prep = sconId_resId[tran1[i+2][3]]
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+3][3]]))
            #print "(rrrrrrrr P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+3][3]])
	    got_prep_rel = prep
            prep = ''
#Ex.   The missiles were ZEROED in on the enemy CAMPS.

	elif tran1[i][0] == '2' and tran1[i][4] in prerak_kriyA and tran1[i+1][0] == '1' and tran1[i+2][0] == '2' and tran1[i+2][0] in prep_lst and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68' and tran1[i+3][5] != 'SWITCH68':
            prep = sconId_resId[tran1[i+2][3]]
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+3][3]]))
            #print "uuuuuuuuuuuuds P%s kriyA-%s_saMbanXI P%s\tP%s)\n" % (prep, return_prep(prep), sconId_resId[tran1[i][3]], sconId_resId[tran1[i+3][3]])
	    got_prep_rel = prep
	    prep = ''
#Ex.   The missiles were ZEROED in on the enemy CAMPS.

        elif tran1[i][0] == '13' and tran1[i-1][0] == '1' and tran1[i+1][0] == '1' and tran1[i-1][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
	    if  tran1[i-1][2] == '57':
		rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], tran1[i][4], sconId_resId[tran1[i-1][3]], sconId_resId[tran1[i+1][3]]))
		#print "(aaaaaaaaaaaation-parser_ids P%s kriyA-%s_saMbanXI P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], tran1[i][4], sconId_resId[tran1[i-1][3]], sconId_resId[tran1[i+1][3]])
	    else:
                rel_fp.write("(prep_id-relation-parser_ids P%s viSeRya-%s_saMbanXI P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], tran1[i][4], sconId_resId[tran1[i-1][3]], sconId_resId[tran1[i+1][3]]))
#Ex. 
	elif tran1[i][0] == '2' and tran1[i+1][0] == '3' and tran1[i+1][4] in lupwa_prep and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex.   He told me why he WAS HERE and what he was doing.

	if len(tran1) > 5:
            if tran1[i-2][0] == '2' and tran1[i][0] == '3' and tran1[i][4] in lupwa_prep and tran1[i-2][5] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran1[i-2][3]], sconId_resId[tran1[i][3]]))
#Ex. It was cold there even in summer.

        if len(tran1) > 4 and tran1[i-2][0] == '1' and tran1[i-1][0] == '13' and tran1[i][0] == '2' and tran1[i][2] == '5':
            rel_fp.write("(prep_id-relation-parser_ids  P%s viSeRya-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran1[i-1][3]], return_prep(tran1[i-1][3]), sconId_resId[tran1[i-2][3]], sconId_resId[tran1[i][3]]))
# Ex. We have very different idea about disciplining children.


#NOTE : The above relations do not add any new relations. They are retained as a back-up.  All the across relations are computed from tran3 output.

if tran1[1][4] == 'there' and (tran1[2][0] == 'seem' or tran1[2][0] == 'appear') and tran1[3][5] != 'SWITCH68':
    rel_fp.write("(prep_id-relation-parser_ids - kriyA-dummy_subject  P%s\tP%s)\n" % (sconId_resId[tran1[2][3]], sconId_resId[tran1[1][3]]))
#Ex. There seems to be no acceleration in the rate of Indian economic growth.

for i in xrange(len(RES_SWRK_TAB)):
	if RES_SWRK_TAB[i][2] == '17' and RES_SWRK_TAB[i][35] == 'not' and RES_SWRK_TAB[i+1][2] == '2':
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_niReXaka  P%s\tP%s)\n" % (RES_SWRK_TAB[i+1][0], RES_SWRK_TAB[i][0]))
#Ex.	Grace may NOT BE possible to fix the problem.

        if RES_SWRK_TAB[i][2] == '17' and RES_SWRK_TAB[i][35] == 'not' and RES_SWRK_TAB[i-1][2] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_niReXaka  P%s\tP%s)\n" % (RES_SWRK_TAB[i-1][0], RES_SWRK_TAB[i][0]))
#Ex.   As you are aware , this IS NOT a new problem 

got_kqxnwa_rel = ''
for each in xrange(len(SWRK_TAB_TRN4_V1)):
   if SWRK_TAB_TRN4_V1[each][1] == '2' and (SWRK_TAB_TRN4_V1[each][3] == '28' or SWRK_TAB_TRN4_V1[each][3] == '27') and SWRK_TAB_TRN4_V1[each+1][1] == '2':
	got_kqxnwa_rel = SWRK_TAB_TRN4_V1[each][4]
        rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyArWa_kriyA P%s\tP%s)\n" % (SWRK_TAB_TRN4_V1[each+1][4], SWRK_TAB_TRN4_V1[each][4]))
#Ex.  She ROSE from the table to WELCOME me.

#RELATIVE CLAUSE RELATED RELATIONS :
original_wrd_fp = open("parserid_wordid_mapping.dat","a")
wrd_fp = open("word.dat","a")
rt_fp = open("root.dat","a")
H_mng_fp = open("hindi_meanings_tmp.dat","a")
ol_num_wrd = open("ol_numeric_word.dat", "a")
pada_con = open("ol_pada_control_fact.dat", "a")
original_wrd = open("original_word.dat", "a")

#------------------------ Inserting missing words and relations with that word ---------------------------
for i in xrange(len(trn3)):
    for j in xrange(len(trn3)):
        if trn3[i][1] == trn3[j][1] and trn3[i][0] == '1' and trn3[j][2] == '94' and i != j and (trn3[j+2][0] == '2' or trn3[j+2][0] == '12' )and trn3[j][5] == 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - viSeRya-jo_samAnAXikaraNa  P%s\tP10000)\n" % sconId_resId[trn3[i][3]])
            pada_fp.write("(pada_info (group_head_id P10000) (group_cat PP) (group_ids P10000) (vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) (preposition 0) (Hin_position 0))\n" )
            original_wrd_fp.write("(parserid-wordid P10000 10000)\n")
            H_mng_fp.write("(id-HM-source 10000 jo Relative_clause)\n")
            ol_num_wrd.write("(parser_numid-word-remark P10000  who -)\n")
            rt_fp.write("(id-root 10000  who)\n")
            wrd_fp.write("(id-word 10000  who)\n")
            pada_con.write("(pada_control_fact 10000)\n")
            original_wrd.write("(id-original_word 10000 who)\n")
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP10000)\n" % sconId_resId[trn3[j+2][3]])
#Ex. The boy you called yesterday has arrived. The snake the mongoose attacked hissed loudly.
        if i > 2:
             if trn3[i][0] == '20' and trn3[i][1] == '103' and trn3[i][2] == '19' and trn3[i+1][0] == '1' and trn3[i][4] != 'that':
                 rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP10000)\n" % sconId_resId[trn3[i+1][3]])
                 pada_fp.write("(pada_info (group_head_id P10000) (group_cat PP) (group_ids P10000) (vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) (preposition 0) (Hin_position 0))\n" )
                 original_wrd_fp.write("(parserid-wordid P10000 10000)\n")
                 H_mng_fp.write("(id-HM-source 10000 ki Python_prog)\n")
                 ol_num_wrd.write("(parser_numid-word-remark P10000  that -)\n")
                 rt_fp.write("(id-root 10000  that)\n")
                 wrd_fp.write("(id-word 10000  that)\n")
                 pada_con.write("(pada_control_fact 10000)\n")
                 original_wrd.write("(id-original_word 10000 that)\n")
#Ex. I thought it is right to resign. 

        if trn3[j-1][1] == '591' and trn3[j-1][2] == '53' and trn3[j-1][5] == 'SWITCH68' and trn3[j][0]== '1' and  trn3[j+1][0] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - viSeRya-jo_samAnAXikaraNa  P%s\tP10000)\n" % sconId_resId[trn3[1][3]])
            pada_fp.write("(pada_info (group_head_id P10000) (group_cat PP) (group_ids P10000) (vibakthi 0) (gender 0) (number 0) (case 0) (person 0) (H_tam 0) (tam_source 0) (preceeding_part_of_verb 0) (preposition 0) (Hin_position 0))\n" )
            original_wrd_fp.write("(parserid-wordid P10000 10000)\n")
            H_mng_fp.write("(id-HM-source 10000 jo Relative_clause)\n")
            ol_num_wrd.write("(parser_numid-word-remark P10000  which -)\n")
            rt_fp.write("(id-root 10000  which)\n")
            wrd_fp.write("(id-word 10000  which)\n")
            pada_con.write("(pada_control_fact 10000)\n")
            original_wrd.write("(id-original_word 10000 which)\n")
#Ex. The position we talked about is gone.

        if trn3[i][0] == '1' and trn3[j][0] == '1' and trn3[i][1] == trn3[j][1] and i != j and (trn3[j-1][5] == 'CLS-BOS' or trn3[j-2][5] == 'CLS-BOS') and trn3[i][4] != trn3[j][4] and  trn3[i][5] != 'SWITCH68' and trn3[j][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - viSeRya-jo_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[trn3[i][3]], sconId_resId[trn3[j][3]])) 
#Ex. I will show you the house where I met your mother. We now know that there are two thousand elements which we can not use to make a good light bulb. 

rt_fp.close()
original_wrd_fp.close()
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%#

gor_counter=0; gor_kriyA=[]; gor_object=[]
for i in xrange(len(tran3)):
        if tran3[i][4] == '20' and (tran3[i][5] == '942' or tran3[i][5] == '915' or tran3[i][5] == '122') and (tran3[i][6] == '19' or tran3[i][6] == '88') and tran3[i][7] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction P%s)\n" % sconId_resId[tran3[i][7]])
#Ex. If you use that strategy, he will wipe you out. As you are aware, this is not a new problem.

        if len(tran3) >=5 and tran3[i-4][4] == '20' and tran3[i-4][5] == '450' and tran3[i-4][8] == 'why' and tran3[i-3][4] == '12' and tran3[i-2][4] == '1' and tran3[i-1][4] == '1' and tran3[i][4] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-wh_word_hewuvAcI P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-4][7]]))
#Ex.  

        if len(tran3) >=5 and tran3[i-3][4] == '20' and tran3[i-3][5] == '450' and tran3[i-3][8] == 'why' and tran3[i-2][4] == '12' and tran3[i-1][4] == '1' and tran3[i][4] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-wh_word_hewuvAcI P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-3][7]]))
#Ex. Why is she not sleeping? 

        if tran3[i-1][4] == '2' and tran3[i][4] == '1' and tran3[i+1][4] == '1' and tran3[i+1][5] == '541' and tran3[i+1][8] in lupwa_prep and tran3[i-1][9] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i+1][7]]))
#Ex. I do not go out as much now .  

        if tran3[i-1][4] == '20' and tran3[i-1][5] == '440' and tran3[i-1][8] in lupwa_prep and tran3[i][4] == '1' and tran3[i+1][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i-1][7]]))
#Ex. I wonder where John is. 

        if tran3[i-2][4] == '2' and  tran3[i-1][4]=='20' and (tran3[i-1][5]=='401' or tran3[i][4]=='12') and tran3[i+1][4] == '2' and tran3[i-2][7] != '10000' and tran3[i+1][7] != '10000' and tran3[i-2][8]!='that': 
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-vAkyakarma  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i+1][7]]))
#Ex. I knew who would come to the party.

        if tran3[i][9] == 'CLS-BOS' and  tran3[i][6] != '35'  and  tran3[i+1][4] == '1'  and tran3[i+2][4] == '2' and tran3[2][4] == '2' and tran3[i+1][4] == '2' and tran3[i+1][9] != 'SWITCH68' and tran3[i+2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i+2][7]]))
#Ex.    The snake WHO SWALLOWED the rat hissed loudly.

        if tran3[i][9] == 'CLS-BOS'  and tran3[1][8] not in aux_verb_lst and tran3[2][9] != 'SWITCH68' and tran3[1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[1][7]]))
#Ex.    The SNAKE who swallowed the rat HISSED loudly.

        if tran3[i-3][9] == 'CLS-BOS'  and  tran3[i-2][4] == '1'  and tran3[i][4] == '2' and tran3[i-1][4] != '12' and tran3[2][4] == '2' and tran3[i-2][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68' and tran3[i][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]],sconId_resId[tran3[i-1][7]]))
#Ex.   I saw the man who YOU LOVE.

        if tran3[i-3][9] == 'CLS-BOS'  and  tran3[i-2][4] == '1'  and tran3[i][4] == '2' and tran3[2][4] == '12' and tran3[3][4] == '2' and tran3[i-2][9] != 'SWITCH68' and tran3[i][9] != 'SWITCH68' and tran3[2][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]],sconId_resId[tran3[i-1][7]]))
#Ex.  

        if tran3[i][9] == 'CLS-BOS'  and  tran3[i+1][4] == '1'  and tran3[i+1][8] in conjunction_list and tran3[i+2][4] == '1' and tran3[i+1][9] != 'SWITCH68' and tran3[i+2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran3[i+2][7]], sconId_resId[tran3[i+1][7]]))
#Ex.  the place where you are staying is very congested.

	if tran3[i-1][4] == '20' and tran3[i-1][8] in conjunction_list and (tran3[i-1][5] == '103' or tran3[i-1][5] == '440')  and  tran3[i][4] == '1' and tran3[i][5] != '207' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
	    rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-1][7]]))
#Ex.  I told Margaret on Tuesday that I thought she would probably be hired.
#Ex:  Can you tell us where those strange ideas came from?

        if tran3[i-1][4] == '20' and tran3[i-1][8] in conjunction_list and (tran3[i-1][5] == '103' or tran3[i-1][5] == '446') and tran3[i][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-1][7]]))
#Ex. Estimate how much the charge of a proton could differ in magnitude from the charge of an electron without creating a noticeable force between your hands.

        if tran3[i][4] == '20'  and  tran3[i][5] == '410'  and tran3[i][8] =='how' and tran3[i+1][4] == '1' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i][7]]))
#Ex. I wonder how big the department is.

#-------------------------------------------Across pada Relations------------------------------------------------------
	if tran3[i][4] == '20'  and  (tran3[i][5] == '965' or tran3[i][5] == '964' or tran3[i][5] == '959') and  tran3[i+1][4] == '1' :
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i][7]]))
#Ex. I can not go out until my hair is dry. (965 for until)
#Ex. Unless my hair is dry I cannot go out.(964 for unless)
#Ex. Since I know English, he spoke to me. (959 for Since)

        if tran3[i-1][8] in aux_verb_lst and tran3[i-1][4] == '2' and tran3[i][4] == '1' and tran3[i][8] == 'a' and tran3[i+1][4] == '12' and tran3[i+1][9] != 'SWITCH68' and tran3[i-2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i+1][7]]))
#Ex. Passion is a must to reach your potential. 
	if len(tran3) > 4:
            if tran3[i-2][4] =='20' and tran3[i-1][4] == '2' and tran3[i-1][8] in aux_verb_lst_small and tran3[i][4] == '20' and tran3[i+1][4] == '1' and tran3[i][9] != 'SWITCH68' and tran3[i-2][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
               rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
               rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i][7]]))
#Ex. Is that the film in which he kills his mother.

	if tran3[i-3][9] == 'CLS-BOS'  and  tran3[i-2][8] == 'who' and tran3[i-1][4] == '1' and  tran3[i][4] == '12' and tran3[i+1][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i-1][7]]))
#Ex. The book I was reading is wonderful.

        if tran3[i][8] in copula and not(tran3[i][4]=='12') and not(tran3[i-1][4]=='2' or tran3[i-1][4]=='12') and tran3[1][8] not in lupwa_prep and tran3[i+1][8] != 'a' and tran3[i-1][9] != 'SWITCH68' and tran3[1][9] != 'SWITCH68':# 'not in lupwa_prep' condition is for 'Here is a big surprise for you.'
	    prep_obj = prep_dict_word_semwrk.keys()
	    if tran3[i+1][8] not in prep_obj and tran3[i+1][4] != '2':#She sold the house even though it was against his wishes. I thought it is right to resign.
		rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i+1][7]]))

        if tran3[i][8] in copula and not(tran3[i][4]=='12') and not(tran3[i-1][4]=='2' or tran3[i-1][4]=='12') and tran3[1][8] not in lupwa_prep and tran3[i+1][8] != 'a' and tran3[i-1][8] !='how' and tran3[i-1][9] != 'SWITCH68': #'not in lupwa_prep' condition is for 'Here is a big surprise for you.'
       	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-1][7]]))
#Ex.	THIS IS a sample SENTENCE for Anusaaraka.

	if tran3[i][8] in copula and not (tran3[i][4]=='12') and (tran3[i-1][4]=='2' or tran3[i-1][4]=='12') and tran3[1][8] not in lupwa_prep and tran3[i-2][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68': #'not in lupwa_prep' condition is for 'Here is a big surprise for you.'
	    rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i+1][7]]))
#Ex.	THIS IS a sample SENTENCE for Anusaaraka.

	if tran3[i][4] == '1' and tran3[i+1][4] == '2' and tran3[i+1][8] in prerak_kriyA and tran3[i+2][4] == '1' and tran3[i+3][4] == '2' and tran3[i+3][9] != 'SWITCH68' and tran3[i][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+3][7]], sconId_resId[tran3[i][7]]))
#Ex.  I MADE him MAKE some changes in the program.

	if tran3[i-2][4] == '1' and tran3[i][4] == '2' and   tran3[i-2][5] == '798' and tran3[i][5] != '300' and tran3[i][9] != 'SWITCH68' and tran3[i-2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-2][7]]))
#Ex.  Perhaps he will attend the meeting. 

        if tran3[i-2][4] == '20' and tran3[i-2][8] == 'and' and tran3[i-1][4] == '1' and tran3[i][4] == '12' and tran3[i+1][4] == '2' and tran3[i-1][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i-1][7]]))
#Ex.  I am in New York and I would like to see you.

        if tran3[1][4] == '2' and tran3[1][8] in aux_verb_lst and tran3[1][5] == '886' and tran3[2][4] == '1' and tran3[2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[1][7]], sconId_resId[tran3[2][7]]))
#Ex.  Are you afraid of spiders?

        if tran3[1][4] == '2' and tran3[1][8] in aux_verb_lst and tran3[1][5] == '886' and tran3[2][4] == '1' and tran3[3][4] == '1' and tran3[3][9] != 'SWITCH68' and tran1[3][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[3][7]]))
#Ex.  Are you afraid of spiders?

        if tran3[i-1][4] == '2' and tran3[i][4] == '1' and tran3[i][8] in lupwa_prep and tran3[i-1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i][7]]))
#Ex. I went there with my mother.

	elif (tran3[i][4] == '2' and tran3[i+1][4] == '2' and tran3[i][8] in have_root) and (tran3[i+2][4] == '1') and tran3[i+1][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
       	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i-1][7]]))
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i+2][7]]))
	    #print "(asfdids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i+2][7]])
#Ex.  A fat ugly BOY had to EAT too many FRUITS to lose his weight .

        elif tran3[i][4] == '2' and tran3[i+1][4] == '2' and tran3[i+1][6] == '35' and tran3[i+1][8][-3:] == 'ing' and tran3[i][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
#Ex. I have started working. 

	elif tran3[i][4] == '2' and tran3[i+1][4] == '2' and tran3[i+1][6] != '38' and (tran3[i+2][4] == '1') and (tran3[i+1][9] != 'SWITCH68' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68'):#the condition tran3[i+2][6] != '38 is for 'I want to go there.' 
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i-1][7]]))
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i+2][7]]))
#ex. I had to guess to know the answer. 

	elif tran3[i-3][4] == '2' and tran3[i][4] == '1' and tran3[i][5] == '853' and tran3[i][9] != 'SWITCH68' and tran3[i-3][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]]))
#Eg: Discuss it among yourselves first.

	elif (tran3[i][4] == '2' and tran3[i+1][4] == '1' and  tran3[i+1][5] == '853' and tran3[i+1][8] not in lupwa_prep  and tran3[i+1][8][-2:] == 'ly') and tran3[i][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
#Ex. The snake the mongoose attacked hissed loudly.

	elif (i == 1 and  tran3[i][4]  == '1' and tran3[i+1][4] == '2' and tran3[i+2][4] == '1' and (tran3[i+1][8] != 'is' and tran3[i+1][8] !=  'are' and tran3[i+1][8] != 'am')) and tran3[i][9] != 'SWITCH68': 
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i][7]]))
#Ex.    A fat ugly boy had to eat too many FRUITS to LOSE his weight. +To stop kriyA-subject rel bitween 

	elif (i == 1 and  tran3[i][4]  == '1' and (tran3[i+1][4] == '2' or tran3[i+1][4] == '12') and tran3[i+2][4] == '2' and tran3[i+2][6] != '38') and tran3[i][9] != 'SWITCH68' and tran3[i+2][9] != 'SWITCH68': #the condition tran3[i+2][6] != '38 is for 'I want to go there.'
           rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+2][7]], sconId_resId[tran3[i][7]]))
#Ex. The MISSILES were ZEROED in on the enemy camps.

	elif tran3[i][4] == '20' and tran3[i][5] == '401' and tran3[i][6] == '19' and tran3[i][8] == 'who' and tran3[i+1][4] == '2' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i][7]]))
#Ex. who translated the sentence for the student ?

        elif tran3[i-1][4] == '20' and tran3[i-1][5] == '909' and tran3[i-1][6] == '2' and tran3[i][4] == '20' and tran3[i][6] == '19' and tran3[i+1][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+1][7]], sconId_resId[tran3[i][7]]))
#Ex. How many people died? How many dogs ran?

        elif tran3[i-1][4] == '20' and tran3[i-1][5] == '909' and tran3[i-1][6] == '2' and tran3[i][4] == '20' and tran3[i][6] == '19' and tran3[i+1][4] == '12' and tran3[i+2][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i+2][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i+2][7]], sconId_resId[tran3[i][7]]))
#Ex. How many dogs were running?

        elif tran3[i-1][4] == '2' and  tran3[i-1][6] == '5' and tran3[i][4] == '2' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-1][7]]))
#Ex. Running is good for health.

	if tran3[i][4] == '2' and tran3[i][8] in prerak_kriyA and tran3[i+1][4] == '1' and tran3[i+2][4] == '2' and tran3[i+2][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-preraka_kriyA  P%s\tP%s)\n" % (sconId_resId[tran3[i+2][7]], sconId_resId[tran3[i][7]]))
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-prayojya_karwA  P%s\tP%s)\n" % (tran3[i+2][7], tran3[i+1][7]))
#Ex.  I MADE him MAKE some changes in the program. I made HIM MAKE some changes in the program.

	elif (tran3[1][8] == 'there' and tran3[2][8] in copula) and tran3[3][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-aBihiwa  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[3][7]]))
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-dummy_subject  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[1][7]]))	
#Ex.  THERE ARE many TUSSUE of fat in our body

        elif tran3[i][4] == '12' and tran3[i][5] == '710' and tran3[i][7] == '2' and tran3[i][9] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction P%s)\n" % sconId_resId[tran3[i][7]])
#Ex. Having finished the book, she went to school.

	elif tran3[i][4] == '1' and tran3[i][5] == '263' and tran3[i][7] == '2':
            rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction P%s)\n" % sconId_resId[tran3[i][7]])
#Ex. Perhaps he will attend the meeting.

#------------------------------------------------------------------------------------------------------------------------
	elif (tran3[i][4] == '2') :
		for k in xrange(1,(len(tran3)-i)):
			if (tran3[i+k][4] == '2' or tran3[i+k][4] == '20'):
				break
			if (tran3[i+k][4] == '1'):
				if tran3[i+k][8] in prep_dict_word_semwrk.keys() and tran3[i][9] != 'SWITCH68' and int(word_id[prep_dict_word_semwrk[tran3[i+k][8]]]) > int(sconId_resId[tran3[i][7]]) and int(word_id[prep_dict_word_semwrk[tran3[i+k][8]]]) < int(sconId_resId[tran3[i+k][7]]) and prep_dict_word_semwrk[tran3[i+k][8]] != 'a':#ex. 4 > & < conditions: "Imagine that a magician waves his wand and changes a bowl of dirt into a bowl of leuttce." the last condition is added for the sentence: "A pool always needs to have its water circulated through a filter for several hours a day in order to keep it clean. and "The factory typically produces 500 chairs a week." 
                			rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[prep_dict_id_semwrk[tran3[i+k][7]]], return_prep(word_id[prep_dict_word_semwrk[tran3[i+k][8]]]), sconId_resId[tran3[i][7]], sconId_resId[tran3[i+k][7]]))
                			#print "(2222222222rser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[prep_dict_id_semwrk[tran3[i+k][7]]], return_prep(word_id[prep_dict_word_semwrk[tran3[i+k][8]]]), sconId_resId[tran3[i][7]], sconId_resId[tran3[i+k][7]])
					got_prep_rel = prep_dict_word_semwrk.keys()
				else:
				    for hr in xrange(len(RES_SWRK_TAB)):
					if tran3[i+k][7]==RES_SWRK_TAB[hr][0]:
					    if RES_SWRK_TAB[hr][2]!='3' and RES_SWRK_TAB[hr][2]!='6':
						if tran3[i+k][8] not in copula and  tran3[i+k][6] != '96' and tran3[i+k][6] != '90':#and tran3[i+k][8] not in prep_lst: #ex for 2nd and condition 'He left in the morning.' These shoes that I bought will look nice with that hat. To the people of India he is the symbol of mature wisdom. 
							gor_counter+=1
							gor_kriyA.append(tran3[i][7])
							gor_object.append(tran3[i+k][7])
							if gor_counter==2:
						            got_obj=tran3[i][4]
	if gor_counter==1 and gor_kriyA[0] in id_word.keys() and id_word[gor_kriyA[0]] not in copula and lupwa_sub_kri == '' and gor_object[0] not in pobj_prep.keys(): #the last part in this con is to stop object relation for prepositional objects. ex. "Ayodhya during ancient times was known as Kaushaldesa."
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]],sconId_resId[gor_object[0]]))
#	    print "yteery - kriyA-object  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]],sconId_resId[gor_object[0]])
	if gor_counter==2 and sconId_resId[gor_kriyA[0]] != '0' and id_word[sconId_resId[gor_kriyA[0]]] not in copula and id_word[sconId_resId[gor_object[1]]] not in prep_lst: #They accused the US of interfering in the internal affairs of other nations.
	    rel_fp.write("(prep_id-relation-parser_ids - kriyA-object_1  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]],sconId_resId[gor_object[0]]))
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-object_2  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[1]],sconId_resId[gor_object[1]]))
            #print "(prep_id-relation-parser_ids - kriyA-object_2  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[1]],sconId_resId[gor_object[1]])
	gor_counter=0
	gor_kriyA=[]
	gor_object=[]#These lists are created temporarily to print out 2 objects in sentences
#Ex. Rama gave a book to Dashrath, the king of Ayodhya.

	if ( (tran3[i][4] == '1') and (tran3[i+1][4] == '1' )):
	    for hr in xrange(len(RES_SWRK_TAB)):
		if tran3[i][7]==RES_SWRK_TAB[hr][0]:
		    if RES_SWRK_TAB[hr][2]!='3' and RES_SWRK_TAB[hr][2]!='6' and tran3[i+1][9] != 'SWITCH68':
			if tran3[i+1][7] in prep_dict_id_semwrk.keys() and tran3[i+1][8] in prep_dict_word_semwrk.keys():	
			    rel_fp.write("(prep_id-relation-parser_ids P%s viSeRya-%s_saMbanXI  P%s\tP%s)\n" % (prep_dict_id_semwrk[sconId_resId[tran3[i+1][7]]], prep_dict_word_semwrk[tran3[i+1][8]], sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
#-----------------------------------------------------------------------------------------------------------------

	elif tran3[i][4] == '2' and (tran3[i][6] == '28' or tran3[i][6] == '38') and tran3[i-1][4] == '1' and got_kqxnwa_rel == '' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68' and got_kqxnwa_rel != tran3[i][7]: # got_kqxnwa_rel = '' condition is to stop in "She rose from the table to welcome me."
                rel_fp.write("(prep_id-relation-parser_ids - saMjFA-to_kqxanwa   P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i][7]]))
#                print "r_ids - saMjFA-to_kqxanwa   P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i][7]])

#Ex.	A fat ugly boy had to eat too many FRUITS to LOSE his weight.

	elif tran3[i][4] == '2' and tran3[i+1][4] == '1' and tran3[i+2][4] == '3' and tran3[i+2][8] in kAlavAcI and tran3[i][9] != 'SWITCH68':
		rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+2][7]]))
#Ex.  You are lucky that there IS no exam TODAY.

        elif tran3[i][4] == '2' and tran3[i+1][4] == '1' and tran3[i+2][4] == '1' and tran3[i+2][8] in kAlavAcI and tran3[i][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+2][7]]))
#Ex.  

 	elif tran3[i][4] == '1' and tran3[i+1][4] == '1' and tran3[i+1][5] == '174' and tran3[i+1][8] in kAlavAcI and tran3[i][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
#Ex.  We are thinking about going to a movie this evening.

	elif tran3[i-3][4] == '2' and tran3[i][4] == '1' and  tran3[i][8] in kAlavAcI and tran3[i-3][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]]))
#Ex.  Buying of shares was brisk on Wall Street today.

        elif tran3[i-2][4] == '2' and tran3[i][4] == '1' and tran3[i][8] in kAlavAcI and tran3[i-2][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kAlavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i][7]]))
#Ex. We ATE at Joe's Diner last WEEK. 

	elif tran3[1][8] in lupwa_prep and tran3[2][8] in copula and tran3[1][8] != 'there':
		rel_fp.write("(prep_id-relation-parser_ids - kriyA-aXikaraNavAcI_avyaya  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[1][7]]))

		rel_fp.write("(prep_id-relation-parser_ids - kriyA-aBihiwa  P%s\tP%s)\n" % (sconId_resId[tran3[2][7]], sconId_resId[tran3[3][7]]))
#Ex.  HERE IS a big SURPRISE for you. 

        elif tran3[i-1][4] == '2' and tran3[i][4] == '1' and tran3[i+1][6] == '38' and tran3[i-1][9] != 'SWITCH68' and tran3[i+1][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kqxanwa_karma  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], sconId_resId[tran3[i+1][7]]))
#Ex. Mary promised the instructor to take that course. 

        elif tran3[i-2][4] == '2' and tran3[i][4] == '1' and tran3[i][5] == '543' and RESid_cat_dic[sconId_resId[tran3[i][7]]]=='3' and tran3[i][9] != 'SWITCH68' and tran3[i-1][9] != 'SWITCH68':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i][7]]))
#Ex. She hurt her arm in the fall and lost the use of her fingers temporarily. 

	elif tran3[i-3][4] == '2' and tran3[i-2][4] == '20' and tran3[i-2][5] == '391' and  tran3[i-2][8] == 'how' and tran3[i-2][9] == 'much' and tran3[i][4] == '2' :
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-praSnavAcI  P%s\tP%s)\n" % (sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i-2][7]]))
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i-2][7]]))
#Ex. I wonder how much you swim. 

        elif len(tran3) > 4 and tran3[1][7] in prep_dict_id_semwrk.keys() and tran3[2][4] == '12' and int(prep_dict_id_semwrk[tran3[1][7]]) < int(tran3[1][7]):
	    rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep_dict_id_semwrk[tran3[1][7]], return_prep(prep_dict_id_semwrk[tran3[1][7]]), sconId_resId[tran3[2][7]], sconId_resId[tran3[1][7]]))
	    #print "212111111111ds P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (prep_dict_id_semwrk[tran3[1][7]], return_prep(prep_dict_id_semwrk[tran3[1][7]]), sconId_resId[tran3[2][7]], sconId_resId[tran3[1][7]])
#Ex. In which school do you study? 

        elif len(tran3) > 4 and tran3[i-3][4] == '2' and tran3[i-1][8] in prep_lst and tran3[i][4] == '2':
	    #print tran3[i-3]
	    #print tran3[i-1]
	    #print tran3[i]
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], return_prep(sconId_resId[tran3[i-1][7]]), sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]]))
            #print "iiiiiiiiiiiiiids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], return_prep(sconId_resId[tran3[i-1][7]]), sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]])
#Ex. I yelled at her for going to the party.

        elif len(tran3) > 4 and tran3[i-3][4] == '2' and tran3[i-1][8] in prep_lst and tran3[i][4] == '2':
            rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], return_prep(sconId_resId[tran3[i-3][7]]), sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]]))
            #print "(asdas P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran3[i-1][7]], return_prep(sconId_resId[tran3[i-3][7]]), sconId_resId[tran3[i-3][7]], sconId_resId[tran3[i][7]])
#Ex. 
#-----------Information form semwork values------------------------------------------------------------

for i in xrange(len(tran3)):
    if 'SWORKO' in tran3[i]:
        if len(semwrk_prep) > 0 and len(semwrk_prep[0]) > 19 and  semwrk_prep[0][12] == '13' and semwrk_prep[0][19] == tran3[i][7] and tran3[i][9] == 'SWITCH68':
             rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP10000)\n" % (sconId_resId[semwrk_prep[0][15]], return_prep(sconId_resId[semwrk_prep[0][15]]), sconId_resId[semwrk_prep[0][7]]))
             #print "(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP10000)\n" % (sconId_resId[semwrk_prep[0][15]], return_prep(sconId_resId[semwrk_prep[0][15]]), sconId_resId[semwrk_prep[0][7]])
#Ex. The position we talked about is gone.

for i in xrange(len(semwrk_verb)):
    if len(semwrk_verb[i]) > 19:
        for j in xrange(len(tran3)):
            if 'SWORKO' in tran3[j]:
                if semwrk_verb[i][10] == '91' and semwrk_verb[i][9] == tran3[j][5] and tran3[j][9] == 'SWITCH68'and tran3[j][7] == semwrk_verb[i][11] :
                    rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject P%s\tP10000)\n" % (sconId_resId[semwrk_verb[i][7]]))
#                    print "(prep_id-relation-parser_ids - kriyA-subject P%s\tP10000)\n" % (sconId_resId[semwrk_verb[i][7]])
#Ex. The girl running to the shop is my friend.


for j in xrange(0, len(semwrk_prep)):
    if len(semwrk_prep)>0 and len(semwrk_prep[j])>15 and semwrk_prep[j][0]=='1':
	if semwrk_prep[j][4]=='1' and (semwrk_prep[j][8]=='13' or semwrk_prep[j][8]=='11') and semwrk_prep[j][12]=='1':
	    for hr in xrange(len(RES_SWRK_TAB)):
		if semwrk_prep[j][11]==RES_SWRK_TAB[hr][0] and id_word[RES_SWRK_TAB[hr][0]] in prep_lst:
		    rel_fp.write("(prep_id-relation-parser_ids P%s viSeRya-%s_saMbanXI  P%s\tP%s)\n" % (RES_SWRK_TAB[hr][0], RES_SWRK_TAB[hr][35], semwrk_prep[j][7], semwrk_prep[j][15]))

#In the above relation computation, it would have been favourable to take the entire information from semwrks but we are not able to fetch the information from semwrks(for saMjFA-saMjFA_samAnAXikaraNa)
#--------Get information of subject and object from Semwrk values---------------------------------------
gor_counter_semwrk=0
gor_kriyA=[]
gor_object=[]
passive_verb_form = ['74','82','80','84']
for j in xrange(0,len(semwrk_verb)):
	if len(semwrk_verb)>0 and semwrk_verb[j][4]=='2':
	    id_key = semwrk_verb[j][7]
	    id_scon_keys = sconId_resId.values()
	    id_word_keys = id_word.keys()
	    if id_key in id_word_keys:
                if sconId_resId[semwrk_verb[j][7]] != '0' and semwrk_verb[j][10]=='91' and id_word[sconId_resId[semwrk_verb[j][7]]] in have_root:
		   rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (semwrk_verb[j][7], semwrk_verb[j][11])) 

	    if semwrk_verb[j][10]=='91' and semwrk_verb[j][6]!='38': #the condition semwrk_verb[j][6] != '38 is for 'I want to go there.'
		rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[semwrk_verb[j][7]], sconId_resId[semwrk_verb[j][11]])) 
	    if len(semwrk_verb[j-1]) > 15:
                if semwrk_verb[j-1][10]=='94' and semwrk_verb[j-1][14] == '91' and semwrk_verb[j-1][6]!='38': #the condition semwrk_verb[j][6] != '38 is for 'I want to go there.'
                    rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[semwrk_verb[j-1][7]], sconId_resId[semwrk_verb[j-1][15]]))
#Ex. 
            if semwrk_verb[j-1][6] in passive_verb_form and semwrk_verb[j-1][10]=='94': # and semwrk_verb[j-1][14] == '91' and semwrk_verb[j-1][6]!='38': #the condition semwrk_verb[j][6] != '38 is for 'I want to go there.'
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[semwrk_verb[j-1][7]], sconId_resId[semwrk_verb[j-1][11]]))
#Ex.  Are John or I invited?

	    for k in xrange(8,len(semwrk_verb[j]),4):
		if semwrk_verb[j][k]=='1' and not(semwrk_verb[j][k+3] in prep_dict_id_semwrk.keys()) and (semwrk_verb[j][k+2]!='91'):
		    gor_counter_semwrk+=1
		    gor_kriyA.append(semwrk_verb[j][7])
		    gor_object.append(semwrk_verb[j][k+3])
		    if gor_counter_semwrk==2:
		    	got_obj=semwrk_verb[j][4]

	if len(semwrk_verb[j]) > 15 and len(gor_kriyA) > 0:
           id_key = gor_kriyA[0]
           id_scon_keys = sconId_resId.values()
           id_word_keys = id_word.keys()
           if id_key in id_word_keys and lupwa_sub_kri == '':
              if gor_counter_semwrk==1 and sconId_resId[gor_kriyA[0]]!= '0' and semwrk_verb[j][6] not in passive_verb_form and semwrk_verb[j][6] != '61' and id_word[sconId_resId[gor_kriyA[0]]] not in copula and semwrk_verb[j][14] != '96' and semwrk_verb[j][14] != '90' and semwrk_verb[j][13] != '401': #the second condition is to stop in passive sentences ex. 'Ravana was killed by Rama' #ex for 'semwrk_verb[j][14] != '96'" condition 'He left in the morning.' These shoes that I bought will look nice with that hat.
		rel_fp.write("(prep_id-relation-parser_ids - kriyA-object  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]], sconId_resId[gor_object[0]]))
		#print "sds - kriyA-object  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]], sconId_resId[gor_object[0]])

        if gor_counter_semwrk==1 and semwrk_verb[j][6] =='61' and sconId_resId[gor_kriyA[0]]!= '0' and id_word[gor_kriyA[0]] not in copula and semwrk_verb[j][14] != '96' and semwrk_verb[j][14] != '90' and semwrk_verb[j][13] != '401':
                rel_fp.write("(prep_id-relation-parser_ids - kriyA-subject  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]],sconId_resId[gor_object[0]]))
#Ex: 	I told Margaret on Tuesday that I thought she would probably be hired.

        if len(semwrk_verb[j]) > 15 and len(gor_kriyA) > 0:
           id_key = gor_kriyA[0]
           id_scon_keys = sconId_resId.values()
           id_word_keys = id_word.keys()
           if id_key in id_word_keys:
              if gor_counter_semwrk==1 and sconId_resId[gor_kriyA[0]]!= '0' and semwrk_verb[j][6] not in passive_verb_form and id_word[sconId_resId[gor_kriyA[0]]] not in copula and semwrk_verb[j][14] != '96' and semwrk_verb[j][14] == '90':
		rel_fp.write("(prep_id-relation-parser_ids - subject-subject_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[semwrk_verb[j][11]], sconId_resId[gor_object[0]]))
#ex. These shoes that I bought will look nice with that hat.
	if len(gor_kriyA) > 0 and len(gor_object) == 1:
 	   id_key = gor_kriyA[0]
	   id_scon_keys = sconId_resId.values()
	   id_word_keys = id_word.keys()
	   id_obj_key = gor_object[0]
           if id_key in id_word_keys and id_obj_key in id_word_keys and sconId_resId[gor_kriyA[0]]!= '0':
                  if gor_counter_semwrk==2 and id_word[sconId_resId[gor_kriyA[0]]] not in copula and id_word[sconId_resId[gor_object[1]]] not in kAlavAcI: #I have been grading these stupid exams all day. I woke up early this morning.
	              rel_fp.write("(prep_id-relation-parser_ids - kriyA-object_1  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[0]],sconId_resId[gor_object[0]]))
                      rel_fp.write("(prep_id-relation-parser_ids - kriyA-object_2  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[1]],sconId_resId[gor_object[1]]))
                      #print "aaaaparser_ids - kriyA-object_2  P%s\tP%s)\n" % (sconId_resId[gor_kriyA[1]],sconId_resId[gor_object[1]])
	gor_counter_semwrk=0
	gor_kriyA=[]
	gor_object=[]
		
if len(semwrk_verb) >=1 :
    for i in xrange(len(semwrk_verb)):
	if len(semwrk_verb[i]) >20 and sconId_resId[semwrk_verb[i][19]] != '0' and semwrk_verb[i][12] == '1' and semwrk_verb[i][16] == '1' and id_form_dic[sconId_resId[semwrk_verb[i][19]]] == '23':
	    rel_fp.write("(prep_id-relation-parser_ids - object-object_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[semwrk_verb[i][15]], sconId_resId[semwrk_verb[i][19]]))
#Ex. Hary considers John honest. The tenors sang themselves hoarse.

kriyA_mUla_lst = ['get','got','gets','getting','make','made','makes','making']
for i in xrange(len(tran3)):
    if tran3[i][4] == '12' and tran3[i][8] in kriyA_mUla_lst and tran3[i+1][4] == '2':
	rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_mUla  P%s\tP%s)\n" % (sconId_resId[tran3[i][7]], sconId_resId[tran3[i+1][7]]))
#Ex. There is no reason to GET so UPSET about it.

    if tran3[i-2][4] == '2' and tran3[i-2][8] in kriyA_mUla_lst and  tran3[i][4] == '2':
	rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_mUla  P%s\tP%s)\n" % (sconId_resId[tran3[i-2][7]], sconId_resId[tran3[i][7]]))
#Ex. I MADE it CLEAR that I was angry. 

for i in xrange(len(RES_SWRK_TAB)):
    if RES_SWRK_TAB[i][34] == '2':
	rel_fp.write("(prep_id-relation-parser_ids - samAsa  P%s)\n"%  RES_SWRK_TAB[i][0])
#Ex.    We lost 30 minutes in the TRAFFIC JAM.

for i in xrange(len(tran1)):
        for j in  xrange(1, len(tran1_components[i])):
            if int(tran1_components[i][j]) < int(tran1[i][3]) and int(tran1_components[i][j]) > 0:
                id = tran1_components[i][j]
                for k in xrange(len(RES_SWRK_TAB)):
                    if (RES_SWRK_TAB[k][0] == id and (RES_SWRK_TAB[k][35] in RaRTI_viSeRaNa)) and (RES_SWRK_TAB[k][2] == '14' or RES_SWRK_TAB[k][2] == '15'):
                         rel_fp.write("(prep_id-relation-parser_ids - viSeRya-RaRTI_viSeRaNa  P%s\tP%s)\n" % (tran1[i][3], tran1_components[i][j]))
#Ex. A fat ugly boy had to eat too many fruits to lose HIS WEIGHT.

                    elif RES_SWRK_TAB[k][0] == id and (RES_SWRK_TAB[k][2] == '14' or RES_SWRK_TAB[k][2] == '15'):
                        rel_fp.write("(prep_id-relation-parser_ids - viSeRya-det_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1_components[i][j]]))
#Ex. A fat ugly BOY had to eat too many fruits to lose his weight.

		    elif tran1[i][3] != '0' and RES_SWRK_TAB[k][0] == id and RES_SWRK_TAB[k][2]== '6' and RES_SWRK_TAB[k][35] == 'even' and tran1[i][0] == '1' and id_form_dic[tran1[i][3]] != '23':
			rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction  P%s)\n" % sconId_resId[tran1_components[i][j]])
#Ex. Even a child can understand it.

		    elif RES_SWRK_TAB[k][0] == id and RES_SWRK_TAB[k][2] == '16':
                        rel_fp.write("(prep_id-relation-parser_ids - viSeRya-saMKyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1_components[i][j]]))
#Ex.	The 5 THOUSAND PEOPLE invited by Bob attended.

		    elif RES_SWRK_TAB[k][0] == id and RES_SWRK_TAB[k][2] == '17':
                        rel_fp.write("(prep_id-relation-parser_ids - viSeRya-saMKyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1_components[i][j]]))
#Ex.    

                    elif RES_SWRK_TAB[k][0] == id and RES_SWRK_TAB[k][2] == '1' and sconId_resId[tran1_components[i][j]] != '0' and not id_word[sconId_resId[tran1_components[i][j]]] in alfa:
                         rel_fp.write("(prep_id-relation-parser_ids - viSeRya-viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1_components[i][j]]))
#Ex. A FAT UGLY BOY had to eat too many fruits to lose his weight .

		    if sconId_resId[tran1_components[i][j]] != '0' and RES_SWRK_TAB[k][2] == '6' and RES_SWRK_TAB[k+1][2] == '1' and (id_form_dic[sconId_resId[tran1_components[i][j]]] != '4' and id_form_dic[sconId_resId[tran1_components[i][j]]] != '7'): #His bed was next to the room's only window.
                        rel_fp.write("(prep_id-relation-parser_ids - viSeRaNa-viSeRaka  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1_components[i][j]]))
#Ex.	Teasing can be VERY CRUEL.

		    if RES_SWRK_TAB[k][2] == '1' and RES_SWRK_TAB[k+1][2] == '1' and RES_SWRK_TAB[k+1][35].istitle() and RES_SWRK_TAB[k][35].istitle():
        	         rel_fp.write("(prep_id-relation-parser_ids - proper_noun-waxviSiRta_proper_noun  P%s\tP%s)\n" % (RES_SWRK_TAB[k][0], RES_SWRK_TAB[k+1][0]))
#Ex.	DALAI LAMA is the abbot of the Tibetian monastery.

                    if RES_SWRK_TAB[k][2] == '1' and RES_SWRK_TAB[k+1][2] == '1' and RES_SWRK_TAB[k+1][35].istitle() and not RES_SWRK_TAB[k][35].istitle():
                        rel_fp.write("(prep_id-relation-parser_ids - proper_noun-waxviSiRta_proper_noun  P%s\tP%s)\n" % (RES_SWRK_TAB[k+1][0], RES_SWRK_TAB[k][0]))
#Ex. We are from the planet Gorpon. This is my friend Bob.

        if tran1[i][0] == '2' and tran1[i][2] == '28' and tran1[i][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - to-infinitive  P%s\tP%s)\n" % ((int(sconId_resId[tran1[i][3]]) -1),sconId_resId[tran1[i][3]]))
#Ex. This is the way TO GO.

for i in xrange(len(tran1)):
	if tran1[i][0] == '2' and tran1[i+1][0] == '1' and tran1[i+2][0] == '3' and tran1[i+2][0] not in lupwa_prep and tran1[i][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+2][3]]))
#Ex. 

	if tran1[i][0] == '2' and tran1[i+1][0] == '1' and tran1[i][1] == '609' and  tran1[i+1][4] not in lupwa_prep and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex.  The old man had to walk a long way to catch the bus.

	if tran1[i][0] == '19' and tran1[i][1] == '985' and tran1[i+1][0] == '2' and tran1[i][4] == 'finally' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. 

	if tran1[i][0] == '20' and (tran1[i][1] == '854' or tran1[i][1] == '966') and tran1[i][4] in conjunction_list and tran1[i+1][0] == '1' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. I want her to know about it, but the telling will not be easy. 
#Ex: Come to our place when you feel like it.

        if tran1[i][0] == '19' and (tran1[i][1] == '935' or tran1[i][1] == '966') and tran1[i][2] == '1' and tran1[i+1][0] != '12' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. She sold the house even though it was against his wishes. The man we saw when we went to Paris is here .

        if tran1[1][0] == '19' and (tran1[1][1] == '935' or tran1[1][1] == '966') and tran1[1][2] == '1' and tran1[i][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction  P%s)\n" % (sconId_resId[tran1[i][3]]))
#Ex. When we want to hear a music programme on the radio, we have to tune the radio to the correct station.

	if tran1[i][0] == '19' and tran1[i][1] == '915' and tran1[i+2][0] == '2' and tran1[i][5] != 'SWITCH68' and tran1[i+2][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+2][3]], sconId_resId[tran1[i][3]]))
#Ex.	As had been expected, the party was a big success.

	if tran1[i][0] == '3' and tran1[i][1] == '15' and tran1[i+1][0] == '1' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. He always bitches about Tanya.

        if tran1[i-1][0] == '12' and tran1[i][0] == '3' and tran1[i][1] == '15' and tran1[i+1][0] == '2' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68' and tran1[i-1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kriyA_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. Do it the way you have always done it.

	if tran1[i][0] == '19' and (tran1[i][1] == '915' or tran1[i][1] == '849') and tran1[i+1][0] == '1' and tran1[i+1][1] !='795' and tran1[i+1][1] != '859' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex.    As you are aware, this is not a new problem.
#Ex:	He is known as the Einstein of India. (859 is for this sentence)
#Ex:	As I suspected, he had already left.  (795 is for this sentence)
#Ex:    Work hard, otherwise you will fail.   (849 is for this sentence) 
 
        if tran1[i][0] == '3' and tran1[i][1] == '167'  and tran1[i][2] == '1' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - subject-conjunction  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. The sky is blue, so it is likely that Joe will come.

	if tran1[i][0] == '1' and tran1[i][5] != 'SWITCH68':
	    RaRTI_viSeRya = tran1[i][3]
	    for j in xrange(1, len(tran1_components[i])):
		if tran1_components[i][j] != '0' and int(tran1_components[i][j]) < int(RaRTI_viSeRya):
		    RaRTI_vNa = tran1_components[i][j]
		    if sconId_resId[RaRTI_vNa] != '0' and (id_form_dic[sconId_resId[RaRTI_vNa]] == '4' or id_form_dic[sconId_resId[RaRTI_vNa]] == '7') and id_word[sconId_resId[RaRTI_vNa]] not in RaRTI_viSeRaNa and(RESid_cat_dic[sconId_resId[RaRTI_vNa]] != '14' or RESid_cat_dic[sconId_resId[RaRTI_vNa]] != '15'): #The figure shows one layer of the three-dimensional structure of a salt crystal.
			rel_fp.write("(prep_id-relation-parser_ids - viSeRya-RaRTI_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[RaRTI_viSeRya], sconId_resId[RaRTI_vNa]))
#Ex. Mary's shoes are red. These are students' books.

        if sconId_resId[tran1[i][0]] == '1':
             if sconId_resId[tran1[i][3]]!='0' and (id_form_dic[sconId_resId[tran1[i][3]]] == '4' or id_form_dic[sconId_resId[tran1[i][3]]]  == '7') and RESid_cat_dic[sconId_resId[tran1[i][3]]] != '5' and RESid_cat_dic[sconId_resId[tran1[i+1][3]]] != '2' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68': #The boy you called yesterday has arrived. The snake the mongoose attacked hissed loudly.
                 rel_fp.write("(prep_id-relation-parser_ids - viSeRya-RaRTI_viSeRaNa  P%s\tP%s)\n" % (sconId_resId[tran1[i+1][3]], sconId_resId[tran1[i][3]]))
#Ex. The big question on everybody's mind is who killed OJ.

        if tran1[i][0] == '19' and (tran1[i][1] == '854' or tran1[i][1] == '820') and tran1[i][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - wall_conjunction P%s)\n" % sconId_resId[tran1[i][3]])
#Ex. But my efforts to win his heart have failed. And 21 could stand for the 21 cm radio frequency of hydrogen in space.

        if tran1[i][0] == '2' and tran1[i+1][0] == '2' and tran1[i+1][2] == '28' and tran1[i][5] != 'SWITCH68' and tran1[i+1][5] != 'SWITCH68':
            rel_fp.write("(prep_id-relation-parser_ids - kriyA-kqxanwa_karma  P%s\tP%s)\n" % (sconId_resId[tran1[i][3]], sconId_resId[tran1[i+1][3]]))
#Ex. 
#------------------------

for i in xrange(len(tran1)):
    for j in  xrange(1, len(tran1_components[i])):
        if int(tran1_components[i][j]) > int(tran1[i][3]) and int(tran1_components[i][j]) <sent_len:
            id = tran1_components[i][j]
            for k in xrange(len(RES_SWRK_TAB)):
                if RES_SWRK_TAB[k][0] == id and (RES_SWRK_TAB[k][2] == '1' or RES_SWRK_TAB[k][2] == '3'):
		  if not id_word[sconId_resId[tran1_components[i][j]]].istitle():
                    rel_fp.write("(prep_id-relation-parser_ids - viSeRaNa-viSeRaka  P%s\tP%s)\n" % (tran1_components[i][j], tran1[i][3]))
#Ex. How certain are you that John is coming.

for i in xrange(len(tran3)):
    for j in  xrange(1, len(tran3_components[i])):
        if int(tran3_components[i][j]) > int(tran3[i][7]) and int(tran3_components[i][j]) <sent_len:
            id = tran3_components[i][j]
            for k in xrange(len(RES_SWRK_TAB)):
                if RES_SWRK_TAB[k][0] == id and RES_SWRK_TAB[k][2] == '3' and sconId_resId[tran3[i][7]]!= '0' and id_word[tran3[i][7]] not in copula:
                    rel_fp.write("(prep_id-relation-parser_ids - viSeRaNa-viSeRaka  P%s\tP%s)\n" % (tran3_components[i][j], tran3[i][7]))
#Ex. How long will it last?

for i in xrange(len(tran2)):
    for j in xrange(len(tran2)-1):
        if tran2[i][0] == '1' and tran2[j][0] == '1' and tran2[i][1] == tran2[j][1] and i != j and (tran2[j-1][5] == 'CLS-BOS' or tran2[j-2][5] == 'CLS-BOS') and tran2[j-1][4] != '*' and tran2[i][4] != tran2[j][4]:
            rel_fp.write("(prep_id-relation-parser_ids - viSeRya-jo_samAnAXikaraNa  P%s\tP%s)\n" % (sconId_resId[tran2[i][3]], tran2[j][3]))
# Ex. Is that the film in which he kills his mother. 
	
	if len(tran2) > 4 and tran2[i-4][0] == '20' and tran2[i-3][0] == '13' and tran2[i-2][0] == '1' and tran2[i-1][0] == '1' and tran2[i][0] == '2':
            rel_fp.write("(prep_id-relation-parser_ids  P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran2[i-3][3]], return_prep(tran2[i-3][3]), sconId_resId[tran2[i][3]], sconId_resId[tran2[i-2][3]]))
            #print "afdssssssssss  P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (sconId_resId[tran2[i-3][3]], return_prep(tran2[i-3][3]), sconId_resId[tran2[i][3]], sconId_resId[tran2[i-2][3]])
# Ex. Is that the film in which he kills his mother.

preplist=  prep_dict_id_semwrk.values()
if '2' in preplist and tran3[2][4] == '20' and tran3[2][5] == '888' and tran3[5][4] == '2':
    rel_fp.write("(prep_id-relation-parser_ids P2 kriyA-%s_saMbanXI  P%s\tP%s)\n" % (return_prep('2'), sconId_resId[tran3[5][7]], sconId_resId[tran3[1][7]]))
    #print "ddddddddds P2 kriyA-%s_saMbanXI  P%s\tP%s)\n" % (return_prep('2'), sconId_resId[tran3[5][7]], sconId_resId[tran3[1][7]])
#Ex. In physics, the term fluid is used to mean either a gas or a liquid.

if '2' in preplist and tran3[2][4] == '20' and tran3[2][5] == '888' and tran3[4][4] == '2':
    rel_fp.write("(prep_id-relation-parser_ids P2 kriyA-%s_saMbanXI  P%s\tP%s)\n" % (return_prep('2'), sconId_resId[tran3[4][7]], sconId_resId[tran3[1][7]]))
#Ex. In India, people are intelligent. 

for i in xrange(len(SWRK_TAB_TRN4)):
    if SWRK_TAB_TRN4[i][1] == '2' and SWRK_TAB_TRN4[i][3] == '20':
	rel_fp.write("(prep_id-relation-parser_ids - AjFArWaka_kriyA  P%s)\n" % SWRK_TAB_TRN4[i][4])
	i+=1
#Ex. TELL me an imperative sentence.

of_pada_tran1_components = []
for i in xrange(1, (len(matrix[0])-1)):
    tran1_components = []
    of_pada_tran1_components = []
    comp_list = []
    of_comp_list = []
    end_point = ''
    start_point = ''
    for j in xrange(len(matrix[0][i])):
        if matrix[0][i][j] == 'SCONPO':
            head = matrix[0][i][8]
            start_point = j+1
            end_mat = matrix[0][i][j+1:]
            for k in xrange(len(end_mat)):
                if end_mat[k][0] in alfa:
                    end_point = ((k-1) + start_point)
                    break
            tran1_components.append(matrix[0][i][7])
            if end_point != '' and start_point != '':
                for l in xrange(start_point, end_point):
                    tran1_components.append(matrix[0][i][7])
                    if int(matrix[0][i][l]) > 0 and  int(matrix[0][i][l]) <= int(matrix[0][i][7]):
	                tran1_components.append(matrix[0][i][l])
#The part below is to separate 'of_pada' from other pada of which it is postmodifier. Ex. Mohan fell from the top OF THE HOUSE.
		    if int(matrix[0][i][l]) <= (len(sent_wrd_list)+1) and int(matrix[0][i][l]) > int(matrix[0][i][7]):
			of_pada_tran1_components.append(matrix[0][i][l])
		        if len(of_pada_tran1_components) > 0:
		  	    of_pada_tran1_components.sort()

if len(of_pada_tran1_components) > 0:
    if id_word[of_pada_tran1_components[0]] == 'than':
        rel_fp.write("(prep_id-relation-parser_ids P%s more_upameya-than_upamAna  P%s\tP%s)\n" % (of_pada_tran1_components[0], str(int(sconId_resId[of_pada_tran1_components[0]])-1), sconId_resId[of_pada_tran1_components[-1]]))
#Ex. He is more INTELLIGENT than JOHN.

    if id_word[of_pada_tran1_components[0]] == 'than' and id_word[str(int(of_pada_tran1_components[0])-2)] == 'more':
        rel_fp.write("(prep_id-relation-parser_ids - viSeRaNa-viSeRaka  P%s\tP%s)\n" % (str(int(sconId_resId[of_pada_tran1_components[0]])-1), str(int(sconId_resId[of_pada_tran1_components[0]])-2)))
#Ex. He is MORE INTELLIGENT than John.

gor_counter_semwrk=0; gor_kriyA=[]; gor_object=[]
for i in open("ol_prep.dat", "r"):
  a = i.split()
  for j in xrange(0,len(semwrk_verb)):
     for k in xrange(8,len(semwrk_verb[j]),4):
        if semwrk_verb[j][k]=='1' and not(semwrk_verb[j][k+3] in prep_dict_id_semwrk.keys()) and (semwrk_verb[j][k+2]!='91'):
            gor_counter_semwrk+=1
            gor_kriyA.append(semwrk_verb[j][7])
            gor_object.append(semwrk_verb[j][k+3])
            if gor_counter_semwrk==2:
                got_obj=semwrk_verb[j][4]
     if semwrk_verb[j]<= len(semwrk_verb):
          if a[3][1:-1] != 0 and  gor_counter_semwrk==1 and sconId_resId[gor_kriyA[0]]!= '0' and id_word[gor_kriyA[0]] not in copula and semwrk_verb[j][14] == '96' and int(a[3][1:-1]) > int(gor_kriyA[0]) and int(a[3][1:-1]) < int(gor_object[0]) :
             rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (a[3][1:-1], return_prep(a[3][1:-1]), gor_kriyA[0],gor_object[0]))
             #print "(reeeeeetion-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (a[3][1:-1], return_prep(a[3][1:-1]), gor_kriyA[0],gor_object[0])
	     got_prep_rel = a[3]
#He left in the morning.

gor_counter_semwrk=0; gor_kriyA=[]; gor_object=[]
for i in open("ol_prep.dat", "r"):
  a = i.split()
  for j in xrange(0,len(semwrk_verb)):
     for k in xrange(8,len(semwrk_verb[j]),4):
        if semwrk_verb[j][k]=='1' and not(semwrk_verb[j][k+3] in prep_dict_id_semwrk.keys()) and (semwrk_verb[j][k+2]!='91'):
            gor_counter_semwrk+=1
            gor_kriyA.append(semwrk_verb[j][7])
            gor_object.append(semwrk_verb[j][k+3])
            prep_key = prep_dict_id_semwrk.keys()
            if prep_key:
                    p_key = prep_key[0]
            if got_prep_rel == '' and a[3][1:-1] != 0 and sconId_resId[gor_kriyA[0]] != '0' and len(semwrk_verb[j]) > 16 and  gor_counter_semwrk==1 and id_word[gor_kriyA[0]] not in copula and semwrk_verb[j][16] == '13' :
                rel_fp.write("(prep_id-relation-parser_ids P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (a[3][1:-1], return_prep(a[3][1:-1]), gor_kriyA[0], p_key))
                #print "ggggggggggggds P%s kriyA-%s_saMbanXI  P%s\tP%s)\n" % (a[3][1:-1], return_prep(a[3][1:-1]), gor_kriyA[0], p_key)
#Ex. Who did you play tennis with?

rel_fp.close()
