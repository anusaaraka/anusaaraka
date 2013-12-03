import sys
import os 

"""Getting Hindi Sentences"""
path = sys.argv[4] + "/tmp/" + sys.argv[5] + "_tmp/" + sys.argv[5] + "_trnsltn_tmp4.html"
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
		dic2.append(int("".join(char[x:k])))
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
			elif(source=="Database_compound_phrase_root_mng"):
				dic2.append("Anu_data/compound-matching/multi_word_expressions.txt")
			elif(source=="Word"):
				dic2.append("Anu_clp_files/causative_verb_mng.clp")
			else:
				dic2.append("#")
			check.append(dic2[0])
			dic1.append(dic2)
		dic2 = []
		k=k+2
	fph.close()

	"""Accessing GNP_agmt_info.dat"""
	fp = open('GNP_agmt_info.dat','r')
	char = fp.read()
	#Added below two line by Sukhada to avoid error: no = int("".join(char[x:k]))
	#ValueError: invalid literal for int() with base 10: '10 13'
	if char[:31] == '(conj_head-left_head-right_head' :
		char = char[char.find(')')+1:]
	char = list(char)
	k=0
	while(len(char)-k>1):
		for j in range(0,2):
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
			link = "Anu_data/hindi_default_tam.txt"	
			dic2.append(link)	
			dic2.append(source)
			dic1.append(dic2)
		while(char[k]!='\n'):
			k=k+1
		k=k+1
	fp.close()

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
		if(sen=="(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng"):
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
			"""getting second number"""
			while(char[k]==' ' or char[k]=='\t'):
				k=k+1
			x=k
			while(char[k]!=' ' and char[k]!='\t'):
				k=k+1
			tmp = []
#			print '===========',"".join(char[-100:-1]), x, k, char[x:k] #  ''.join(char),
			no = int("".join(char[x:k]))
			tmp.append(no)
			tmp.append(link)
			""""""
			if no not in check:
				check.append(no)
				dic1.append(tmp)
		elif(sen=="(dir_name-file_name-rule_name-id-wsd_root_mng"):
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
path = sys.argv[2]+"/sample2.html"
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
		f2.write("<style type=\"text/css\">\n/* popup_box DIV-Styles*/\n#popup_box {\ndisplay:none;\nposition:fixed;\n_position:absolute;\nheight:160px;\nwidth:37%;\nbackground:#FFFFFF;\nleft: 20%;\ntop: 150px;\nz-index:100;\nmargin-left: 15px;  \nborder:2px solid #ff0000;\nopacity:0;\npadding:15px;\nfont-size:15px;\n-moz-box-shadow: 0 0 5px #ff0000;\n-webkit-box-shadow: 0 0 5px #ff0000;\nbox-shadow: 0 0 5px #ff0000;\n}\n\na{\ncursor: pointer;\ntext-decoration:none;\n}\n\n/* This is for the positioning of the Close Link */\n#popupBoxClose {\nfont-size:20px;\nline-height:15px;\nright:5px;\ntop:5px;\nposition:absolute;\ncolor:#6fa5e2;\nfont-weight:500;\n}\n</style>\n<div id=\"popup_box\">\n<textarea name=\"message\" id=\"message\" rows=\"5\" style=\"width:80%;\" readonly></textarea><br/><br/>\nSuggestion : <input type=\"text\" id=\"sug\" name=\"sug\"/><br/>\n<input type=\"submit\" value=\"Send Email\" style=\"float:right;\" onclick=\"mail();return false;\">\n<a id=\"popupBoxClose\">Close</a>\n</div>\n<style type=\"text/css\">\n            .opaqueLayer\n            {\n                display:none;\n                position:absolute;\n                top:0px;\n                left:0px;\n                opacity:0.6;\n                filter:alpha(opacity=60);\n                background-color: #000000;\n                z-Index:1;\n            }\n</style>\n<div id=\"shadow\" class=\"opaqueLayer\"> </div>\n<script>\nfunction mail(){\n	var message = document.getElementById(\"message\");\n	var sug = \"Suggestion - \" + document.getElementById('sug').value;\n	var mes = \"\";\n	var i=7, ind=0;\n	while(message.value[i]!=' '&&message.value[i]!='\\n'){\n		mes+=message.value[i];\n		i++;\n	}\n	var data = \"subject=Incorrect Translation For \\\"\" + mes + \"\\\"\";\n	data+=\"&email=\";\n	var i=7;\n	var char=message.value[i++].toUpperCase();\n	while(char!=' ') {\n		if(char=='A'||char=='B'){\n			data+=\"gsingh.nik@gmail.com\";\n			data += \"&message=Dear Garima Singh,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='C'){\n			data+=\"pradhan.preet@gmail.com\";\n			data += \"&message=Dear Preeti,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='D'||char=='E'){\n			data+=\"pramila3005@gmail.com\";\n			data += \"&message=Dear Pramila,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='F'||char=='G'){\n			data+=\"krithika.ns@gmail.com\";\n			data += \"&message=Dear Krithika,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='H'||char=='I'||char=='J'||char=='K'){\n			data+=\"prachirathore02@gmail.com\";\n			data += \"&message=Dear Prachi Rathore,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='L'||char=='M'||char=='N'){\n			data+=\"nandini.upasani@gmail.com\";\n			data += \"&message=Dear Nandini,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='O'||char=='P'){\n			data+=\"sonam27virgo@gmail.com\";\n			data += \"&message=Dear Sonam,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='Q'||char=='R'||char=='W'||char=='X'||char=='Y'||char=='Z'){\n			data+=\"anita.chaturvedi@gmail.com\";\n			data += \"&message=Dear Anita,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='S'){\n			data+=\"gsingh.nik@gmail.com\";\n			data += \"&message=Dear Jagriti Singh,%0A%0A\" + message.value + sug;\n			break;\n		}\n		if(char=='T'||char=='U'||char=='V'){\n			data+=\"roja19p@gmail.com\";\n			data += \"&message=Dear Roja,%0A%0A\" + message.value + sug;\n			break;\n		}\n		char=message.value[i++].toUpperCase();\n	}\n	var xmlhttp=new XMLHttpRequest();\n	message.innerHTML=\"\";\n	document.getElementById(\"popup_box\").style.display=\"none\";\n	document.getElementById('popup_box').style.opacity=\"0\";\n	hideLayer();\n	var flag;\n	xmlhttp.onreadystatechange=function()\n	{\n		flag=0;\n		if (xmlhttp.readyState==4 ){\n			flag=1;\n			alert(\"MESSAGE HAS BEEN SUCCESSFULLY SENT\");\n            	}\n	};\n	xmlhttp.open(\"GET\",\"http://127.0.0.1/mail.php?\"+data,true);\n	xmlhttp.send(null);\n}\n</script>\n<script>\nfunction getBrowserHeight() {\n                var intH = 0;\n                var intW = 0;\n                if(document.body && (document.body.clientWidth || document.body.clientHeight)) {\n                    intH = document.body.clientHeight;\n                    intW = document.body.clientWidth;\n                }\n                return { width: parseInt(intW), height: parseInt(intH) };\n            }\n            function setLayerPosition() {\n                var shadow = document.getElementById(\"shadow\");\n                var bws = getBrowserHeight();\n                shadow.style.width = bws.width + \"px\";\n                shadow.style.height = bws.height + \"px\";\n                shadow = null;\n            }\n            function showLayer() {\n                setLayerPosition();\n                var shadow = document.getElementById(\"shadow\");\n                shadow.style.display = \"block\";\n                shadow = null;\n            }\n            function hideLayer() {\n                var shadow = document.getElementById(\"shadow\");\n                shadow.style.display = \"none\";\n                shadow = null;\n            }\nwindow.onresize = setLayerPosition;\ntable=document.getElementsByTagName(\"table\");\nfor(i=0;i<table.length;i++)\n{\ntable[i].ondblclick=function(){\n	showLayer();\n	var str = \"Word - \";\n	tr = this.getElementsByTagName('tr');\n	td = tr[0].getElementsByTagName('td');\n	a = td[0].getElementsByTagName('a');\n	span = a[0].getElementsByTagName('span');\n	if(span[0]==null){\n		a = td[1].getElementsByTagName('a');\n		span = a[0].getElementsByTagName('span');\n		str += span[0].innerHTML;\n	}\n	else str += span[0].innerHTML;\n	//getting sentence\n	table1=document.getElementsByTagName(\"table\");\n	var nextsen = \"\";\n	for(i=0;i<table1.length;i++)\n	{\n		if(table1[i]==this)break;\n	}\n	var k=i;\n	for(j=i;j>=0;j--)\n	{\n		tr = table1[j].getElementsByTagName('tr');\n		td = tr[0].getElementsByTagName('td');\n		if(td[1]!=null){\n			senno = td[0].innerHTML;\n			k=j;\n			break;\n		}\n	}\n	for(j=k;j<=i;j++)\n	{\n		tr = table1[j].getElementsByTagName('tr');\n		td = tr[0].getElementsByTagName('td');\n		if(j!=k){\n			a = td[0].getElementsByTagName('a');\n		}\n		else{\n			a = td[1].getElementsByTagName('a');\n		}\n		span = a[0].getElementsByTagName('span');\n		nextsen += span[0].innerHTML+\" \";\n	}\n	for(j=i+1;j<table1.length;j++)\n	{\n		tr = table1[j].getElementsByTagName('tr');\n		td = tr[0].getElementsByTagName('td');\n		if(td[1]==null){\n			a = td[0].getElementsByTagName('a');\n			span = a[0].getElementsByTagName('span');\n			nextsen += span[0].innerHTML+\" \";\n		}\n		else{\n			break;\n		}\n	}\n	str += \"\\nSentence - \"+nextsen + \"\\nHindi Translation - \";" + jvstr + "	document.getElementById(\"message\").innerHTML=str;\n	loadPopupBox();\n};\n}\nfunction loadPopupBox() {    // To Load the Popupbox\n	document.getElementById('popup_box').style.display=\"block\";\n        document.getElementById('popup_box').style.opacity=\"1\";\n}\ndocument.getElementById('popupBoxClose').onclick= function() {           \n        document.getElementById('popup_box').style.display=\"none\";\n        document.getElementById('popup_box').style.opacity=\"0\";\n	hideLayer();\n}\n</script>\n")
		f2.write("<script>\nwindow.onload=function(){\n	var tr = document.getElementsByClassName('row9');\n")
		for i in range(0,len(dic)):
			if(len(dic[i])==1):
				string = "var td = tr[" + str(i) + "].getElementsByTagName('td');\nvar index=0;\nif(td.length==2)index=1;\nvar a = td[index].getElementsByTagName('a');\na[0].onclick=function(){\n	this.target=\"blank\";\n	this.href=\"file://" + sys.argv[3] + "/" + dic[i][0] + "\";\n}\n"
				f2.write(string)
			elif(len(dic[i])==3):
				string = "var td = tr[" + str(i) + "].getElementsByTagName('td');\n	var index=0;\n	if(td.length==2)index=1;\n	var a = td[index].getElementsByTagName('a');\n	var span = a[0].getElementsByTagName('span');\n	var spanv = span[0].innerHTML;\n	var av = a[0].innerHTML;\n	var ind = av.indexOf(spanv);\n	ind--;\n	av=av.slice(0,ind);\n	var k=0;\n	var r = av.indexOf('{');\n	var av1;\n	var av2;\n	if(r!=-1){\n		k = r;\n		av1 = av.slice(0,k);\n		av2 = av.slice(k,av.length-1);\n	}\n	else{\n		av1 = av;\n		av2 = \"tam\";\n		spanv += \" : tam missing\";\n	}\n	a[0].parentNode.removeChild(a[0]);\n	var a1 = document.createElement(\"a\");\n	a1.innerHTML = av1;\n	a1.target = \"blank\";\n	a1.href = \"file://" + sys.argv[3] + "/" + dic[i][0] + "\";\n	a1.className = \"tooltip\";\n	var span1 = document.createElement(\"span\");\n	span1.innerHTML = spanv;\n	a1.appendChild(span1);\n	var a2 = document.createElement(\"a\");\n	a2.innerHTML = av2;\n	a2.target = \"blank\";\n	a2.href = \"file://" + sys.argv[3] + "/" + dic[i][1] + "\";\n	a2.className = \"tooltip\";\n	var span2 = document.createElement(\"span\");\n	span2.innerHTML = \"" + dic[i][2] +"\";\n	a2.appendChild(span2);\n	td[index].appendChild(a1);\n	td[index].appendChild(a2);\n"
				f2.write(string)
		f2.write("}\n</script>\n")
f2.close()
