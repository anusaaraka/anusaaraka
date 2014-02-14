import sys
import os 

"""Getting Hindi Sentences"""
path = sys.argv[4] + "/tmp/" + sys.argv[5] + "_tmp/" + sys.argv[5] + "_trnsltn_tmp4.html"
path1 = sys.argv[2] + "/mail.js" #Separated mail related data in mail.js file
m_p = open(path1, 'r')
m_p1_line = m_p.read() 
f1 = open(path,'r')
char = f1.read()
char = list(char)
i=0
k=0
hnd = []
while(i!=4):
	if(char[k]=='\n'):
		i=i+1
	k=k+1
while(char[k]!='<'):
	x=k
	while(char[k]!='\t' and char[k]!=' '):
		k=k+1
	ind = "".join(char[x:k])
	while(char[k]==' ' or char[k]=='\t'):
		k=k+1
	x=k
	while(char[k]!='\n'):
		k=k+1
	hndsen = "".join(char[x:k])
	k=k+1
	tmp = []
	tmp.append(ind)
	tmp.append(hndsen)
	hnd.append(tmp)
	while(char[k]!='\n'):
		k=k+1
	k=k+1
jvstr = "var hnd = new Array();\nfor(i=0;i<" + str(len(hnd)) + ";i++){\n	hnd[i] = new Array();\n}\n"
for i in range(0,len(hnd)):
	jvstr += "hnd[" + str(i) + "][0] = \"" + hnd[i][0] + "\";\n"
	jvstr += "hnd[" + str(i) + "][1] = \"" + hnd[i][1] + "\";\n"
jvstr += "var k=0;\nvar i=0;\nwhile(k!=2){\n	if(senno[i]=='.')k++;\n	i++;\n}senno = senno.slice(0,i-1);\nfor(i=0;i<" + str(len(hnd)) + ";i++){\n	if(hnd[i][0]==senno){\n		str += hnd[i][1];\n		break;\n	}\n}\n"


"""Getting to path $HOME_tmp_anu/tmp/file_tmp"""
f1 = open(sys.argv[1])
l = len(sys.argv[1])
f = list(sys.argv[1])
f[l-5]='_'
f[l-4]='t'
f[l-3]='m'
f[l-2]='p'
flag=0
for i in range(l-1,-1,-1):
	if(f[i]=='/'):
		break
for x in range(0,i+1):
	f.pop(0)
f.pop(len(f)-1)
f="".join(f)
path = sys.argv[4] + "/tmp/" + f + "/."
dic = []
sen = []
os.chdir(path)



"""Sorting the directories"""
dire = []
for o in os.listdir(os.getcwd()):
	if(os.path.isdir(o)):
		if(o!="anu_html"):
			o=o.split('.')
			o[0] = int(o[0])
			o[1] = int(o[1])
			dire.append(o)
dire.sort()
for i in range(0,len(dire)):
	dic1=[]
	check = []
	dire[i][0] = str(dire[i][0])
	dire[i][1] = str(dire[i][1])
	dire[i] = ".".join(dire[i])
	os.chdir(dire[i])
	#print dire[i]
	maxi = -1

	"""Accessing hindi_meanings.dat"""
	fph = open('hindi_meanings.dat', 'r')
	char = fph.read()
	char = list(char)
	k=0
	while(len(char)-k>1):
		while(char[k]!=' '):
			k=k+1
		while(char[k]==' '):
			k=k+1
		x=k
		while(char[k]!=' '):
			k=k+1
		dic2 = []
#		print '===========', char[-50:] , char[x:k],  ''.join(char),
		no = int("".join(char[x:k]))
		dic2.append(no)
		if(no>maxi and no<10000):
			maxi=no
		while(char[k]==' '):
			k=k+1
		while(char[k]!=' '):
			k=k+1
		while(char[k]==' '):
			k=k+1
		x=k
		while(char[k]!='\n'):
			k=k+1
		k=k-1
		source = "".join(char[x:k])
		if "WSD" not in source:
			if(source=="Default_meaning"):
				dic2.append("Anu_data/default-iit-bombay-shabdanjali-dic.txt")
				if dic2[0] not in check:
					check.append(dic2[0])
					dic1.append(dic2)
			elif(source=="Database_compound_phrase_root_mng"):
				dic2.append("Anu_data/compound-matching/multi_word_expressions.txt")
				if dic2[0] not in check:
					check.append(dic2[0])
					dic1.append(dic2)
			elif(source=="Word"):
				dic2.append("Anu_clp_files/causative_verb_mng.clp")
				if dic2[0] not in check:
					check.append(dic2[0])
					dic1.append(dic2)
		dic2 = []
		k=k+2
	fph.close()
	#print dic1

	"""Accessing GNP_agmt_info.dat"""
	fp = open('GNP_agmt_info.dat','r')
	char = fp.read()
	char = list(char)
	k=0
	while(len(char)-k>1):
		x=k
		while(char[k]!=' ' and char[k]!='\t'):
			k=k+1
		if("".join(char[x:k])=="(conj_head-left_head-right_head"):
			while(char[k]!='\n'):
				k=k+1
			k=k+1
			continue
		while(char[k]==' ' or char[k]=='\t'):
			k=k+1
		for j in range(0,1):
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
		x=k
		while(char[k]!=')'):
			k=k+1
#		print '===========', char[-50:] , char[x:k],  ''.join(char),
		no = int("".join(char[x:k]))
		dic2 = []
		dic2.append(no)
		k = "".join(char).find("tam_source",k)
		while(char[k]!=' ' and char[k]!='\t'):
			k=k+1
		while(char[k]==' ' or char[k]=='\t'):
			k=k+1
		x=k
		while(char[k]!=')'):
			k=k+1
		source = "".join(char[x:k])
		if(source=="Default"):
			check.append(no)
			link = "Anu_data/hindi_default_tam.txt"	
			dic2.append(link)	
			dic2.append(source)
			dic1.append(dic2)
		while(char[k]!='\n'):
			k=k+1
		k=k+1
	fp.close()
	#print dic1

	"""Accessing debug_file.dat"""
	fp = open('debug_file.dat', 'r')
	char = fp.read()
	char = list(char)
	k=0
	while(len(char)-k>1):
		x=k
		while(char[k]!=' ' and char[k]!='\t'):
			k=k+1
		sen = "".join(char[x:k])
		if(sen=="(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng" or sen=="(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng"):
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!='/'):
				k=k+1
			k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link = "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link += "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			"""getting first number"""
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			tmp = []
			no = int("".join(char[x:k]))
			tmp.append(no)
			tmp.append(link)
			""""""
			if no not in check:
				check.append(no)
				dic1.append(tmp)
			else:
				for j in range(0,len(dic1)):
					if(no==dic1[j][0] and len(dic1[j])>=3):
						if(dic1[j][2]=="Default"):
							dic1.append(tmp)
							break
			"""getting second number"""
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			digit=1
			while(char[k]!=' ' and char[k]!='\t'):
				if(char[k]=='=' or char[k]==':'):
					char.pop(k)
				elif(char[k]!='0' and char[k]!='1' and char[k]!='2' and char[k]!='3' and char[k]!='4' and char[k]!='5' and char[k]!='6' and char[k]!='7' and char[k]!='8' and char[k]!='9'):
					digit=0
					break;
				else:
					k=k+1
			if(digit==1):
				tmp = []
				no = int("".join(char[x:k]))
				tmp.append(no)
				tmp.append(link)
				""""""
				if no not in check:
					check.append(no)
					dic1.append(tmp)
				else:
					for j in range(0,len(dic1)):
						if(no==dic1[j][0] and len(dic1[j])>=3):
							if(dic1[j][2]=="Default"):
								dic1.append(tmp)
								break
		elif(sen=="(dir_name-file_name-rule_name-id-wsd_root_mng" or sen=="(dir_name-file_name-rule_name-id-wsd_word_mng"):
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!='/'):
				k=k+1
			k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link = "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link += "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			"""getting first number"""
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				if(char[k]!='0' and char[k]!='1' and char[k]!='2' and char[k]!='3' and char[k]!='4' and char[k]!='5' and char[k]!='6' and char[k]!='7' and char[k]!='8' and char[k]!='9'):
					break
				k=k+1
			tmp = []
			no = int("".join(char[x:k]))
			tmp.append(no)
			tmp.append(link)
			""""""	
			if no not in check:
				check.append(no)
				dic1.append(tmp)
			else:
				for j in range(0,len(dic1)):
					if(no==dic1[j][0] and len(dic1[j])>=3):
						if(dic1[j][2]=="Default"):
							dic1.append(tmp)
							break
		elif(sen=="(default-iit-bombay-shabdanjali-dic.gdbm"):
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			no = int("".join(char[x:k]))
			tmp=[]
			tmp.append(no)
			link = "Anu_data/default-iit-bombay-shabdanjali-dic.txt"
			tmp.append(link)
			if no not in check:
				check.append(no)
				dic1.append(tmp)
			else:
				for j in range(0,len(dic1)):
					if(no==dic1[j][0] and len(dic1[j])>=3):
						if(dic1[j][2]=="Default"):
							dic1.append(tmp)
							break
		elif(sen=="(dir_name-file_name-rule_name-id-H_tam_mng"):
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!='/'):
				k=k+1
			k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link = "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			link += "".join(char[x:k])
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			"""getting first number"""
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			tmp = []
			no = int("".join(char[x:k]))
			tmp.append(no)
			tmp.append(link)
			tmp.append("WSD")
			""""""
			dic1.append(tmp)
		while(char[k]!='\n'):
			k=k+1
		k=k+1
	fp.close()
	#print dic1
	for j in range(1,maxi+1):
		if j not in check:
			tmp = []
			tmp.append(j)
			tmp.append("#")
			dic1.append(tmp)
	#print dic1
	#print check
	#print maxi
	dic1.sort()
	flag=0
	for j in range(0,len(dic1)):
		if(flag==1):
			flag=0
			continue
		if(j!=len(dic1)-1 and dic1[j][0]==dic1[j+1][0]):
			tmp = []
			val = dic1[j+1][1].find("tam")
			if(val!=-1):
				tmp.append(dic1[j][1])
				tmp.append(dic1[j+1][1])
				tmp.append(dic1[j+1][2])
			else:
				tmp.append(dic1[j+1][1])
				tmp.append(dic1[j][1])
#				print '==========', dic1[j], '******', j, dic1, '______', tmp, ''.join(char),
				tmp.append(dic1[j][2])
			flag=1
			dic.append(tmp)
		else:
			tmp = []
			tmp.append(dic1[j][1])
			dic.append(tmp)
	os.chdir("..")
f1.close()


f1 = open(sys.argv[1])
path = sys.argv[2]+"/"+sys.argv[5]+"_sample2.html"
f2 = open(path,"a")
f2.write("")
count=0
for line in f1:
	count+=1
f1.close()
f1 = open(sys.argv[1])
l=0
for line in f1:
	l+=1
	f2.write(line)
	if(l==count-2):
		f2.write(m_p1_line) #Printing mail related data
		f2.write(jvstr)
		f2.write("document.getElementById(\"message\").innerHTML=str;\n	loadPopupBox();\n};\n}\nfunction loadPopupBox() {	// To Load the Popupbox\n	document.getElementById('popup_box').style.display=\"block\";\n	document.getElementById('popup_box').style.opacity=\"1\";\n}\ndocument.getElementById('popupBoxClose').onclick= function() {	\n	document.getElementById('popup_box').style.display=\"none\";\n	document.getElementById('popup_box').style.opacity=\"0\";\n	hideLayer();\n}\n</script>\n")
		f2.write("<script>\nwindow.onload=function(){\n	var tr = document.getElementsByClassName('row9');\n")	
		for i in range(0,len(dic)):
			if(len(dic[i])==1):
				string = "var td = tr[" + str(i) + "].getElementsByTagName('td');\nvar index=0;\nif(td.length==2)index=1;\nvar a = td[index].getElementsByTagName('a');\na[0].onclick=function(){\n	this.target=\"blank\";\n	this.href=\"file://" + sys.argv[3] + "/" + dic[i][0] + "\";\n}\n"
				f2.write(string)
			elif(len(dic[i])==3):
				string = "var td = tr[" + str(i) + "].getElementsByTagName('td');\n	var index=0;\n	if(td.length==2)index=1;\n	var a = td[index].getElementsByTagName('a');\n	var span = a[0].getElementsByTagName('span');\n	var spanv = span[0].innerHTML;\n	var av = a[0].innerHTML;\n	var ind = av.indexOf(spanv);\n	ind--;\n	av=av.slice(0,ind);\n	var k=0;\n	var r = av.indexOf('{');\n	var av1;\n	var av2;\n	if(r!=-1){\n		k = r;\n		av1 = av.slice(0,k);\n		av2 = av.slice(k,av.length-1);\n	}\n	else{\n		av1 = av;\n		av2 = \"tam\";\n		spanv += \" : tam missing\";\n	}\n	a[0].parentNode.removeChild(a[0]);\n	var a1 = document.createElement(\"a\");\n	a1.innerHTML = av1;\n	a1.target = \"blank\";\n	a1.href = \"file://" + sys.argv[3] + "/" + dic[i][0] + "\";\n	a1.className = \"tooltip\";\n	var span1 = document.createElement(\"span\");\n	span1.innerHTML = spanv;\n	a1.appendChild(span1);\n	var a2 = document.createElement(\"a\");\n	a2.innerHTML = av2;\n	a2.target = \"blank\";\n	a2.href = \"file://" + sys.argv[3] + "/" + dic[i][1] + "\";\n	a2.className = \"tooltip\";\n	var span2 = document.createElement(\"span\");\n	span2.innerHTML = \"" + dic[i][2] +"\";\n	a2.appendChild(span2);\n	td[index].appendChild(a1);\n	td[index].appendChild(a2);\n"
				f2.write(string)
		f2.write("}\n</script>\n")
		f2.write("<script type=\"text/javascript\">\nvar a= document.getElementById(\"navigation\");\nvar form = a.getElementsByTagName(\"form\");\nform[0].style.display=\"inline\";\nform[0].getElementsByTagName(\"p\")[0].style.display=\"inline\";\nvar link= document.createElement('form');\nlink.id=\"form1\";\nlink.style.display=\"inline\";\nvar inp= document.createElement('input');\nvar submit= document.createElement('input');\ninp.type='text';\ninp.id='sentence';\ninp.value='0.0';\ninp.size=\"3\";\nsubmit.type=\"submit\";\nsubmit.value=\"Check Sentence Reordering\";\nlink.appendChild(inp);\nlink.appendChild(submit);\nlink.method=\"POST\";\na.appendChild(link);\nvar button = document.createElement('button');\nbutton.onclick=function(){\nvar no1=window.open(\"http://127.0.0.1/tregex.php\",\"\",\"width=1,height=1\");\n};\nvar text = document.createTextNode(\"Open Parser\");\nbutton.appendChild(text);\na.appendChild(button);\n</script>\n<script type=\"text/javascript\">\nvar myVar = setInterval(function(){myTimer()},3000);\n\nfunction myTimer()\n{\nvar add = document.getElementById('sentence');\nvar add1 = add.value;\nvar a= document.getElementById(\"navigation\");\nvar link = document.getElementById('form1');\nvar address= document.createTextNode((\"file://" + sys.argv[4] + "/tmp/" + sys.argv[5] + "_tmp/\".concat(add1)).concat(\"/hindi_id_order.dat\"));\nlink.action=address.nodeValue;\nlink.target=\"blank\";\n}\na.appendChild(link);\n</script>")
f2.close()
