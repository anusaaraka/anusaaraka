import sys
import os
f1 = open(sys.argv[1])
countline=0
countspace=0
j=0
home=os.getenv("HOME")
path=sys.argv[2]+"/"+sys.argv[3]+"_sample1"
f2 = open(path,"w")
f2.write("")
f2.close()
f2 = open(path,"a")
flagglobal=0
tablecount=0
for i in f1:
	countline+=1
	if(countline>3 and countline%2==0):
		tablecount+=1
	countspace=0
	flag=0;
	for char in i:
		if(char=='<' and countspace==0):
			flag=1
		elif(flagglobal==0 and flag==0):
			f2.write("<script type=\"text/javascript\">\nvar array = new Array();\nvar i=0;\nfunction func(id){\narray[i++] = document.getElementById(id).innerHTML;\n}\nwindow.onload=setTimeout(call,5000);\nfunction call() {\n	var doc = top.English;\n	var text = doc.document.getElementsByClassName('suggestion');\n	for(k=0;k<text.length;k++){\n		text[k].onclick = function(event){\n			if(event.ctrlKey){\n				this.value=\"-->\";\n			}\n			if(event.shiftKey){\n				this.value=\"<--\";\n			}\n			if(!event.ctrlKey && !event.shiftKey){\n			var str;\n			if(document.getElementById('replace').checked){\n				str=\"\";\n				if(i==0)str+=this.value;\n			}\n			if(document.getElementById('append').checked){\n				str=\"\";\n				str+=this.value;\n				if(str[str.length-1]!=' ')str+=' ';\n			}\n			for(j=0;j<i;j++){\n				if(j!=i-1)str+=array[j] + \"_\";\n				else str+=array[j] + \" \";\n			}\n			i=0;\n			this.value=str;\n			}\n		};\n	}\n}\n</script>\n<input type=\"radio\" name=\"append_replace\" id=\"append\"/>APPEND <input type=\"radio\" name=\"append_replace\" id=\"replace\" checked/>REPLACE<br/>\n")
			flagglobal=1
			
		if(flag==0):
			if(char==' ' and countspace==0):
				f2.write(char)
				f2.write("<div id=\"table"+str(tablecount)+"\" style=\"display:inline;\">\n<span id=\""+str(j)+"\" onclick=\"func("+str(j)+")\">")
				j=j+1
				countspace+=1
				continue
			if(char==' ' or char=='\n'):
				f2.write("</span>")
				countspace=countspace+1
				if(char==' '):
					f2.write(char)
					f2.write("<span id=\""+str(j)+"\" onclick=\"func("+str(j)+")\">")
					j=j+1
				if(char=='\n'):
					f2.write("\n</div>")
			if(char!=' '):
				f2.write(char)
		else:
			f2.write(char)

