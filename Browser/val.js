function openwindow(name, name1)
{
win3 = window.open("", "Window3", "width=420,height=310,scrollbars=yes");
win3.document.write("<b>Word:</b>");win3.document.write(name);
win3.document.write("<br><b>Sentence:</b>");win3.document.write(name1);
win3.document.writeln("<html><head><script type=\"text/javascript\">function validate_required(field,alerttxt){with (field)  {  if (value==null||value==\"\")    {    alert(alerttxt);return false;    }  else    {    return true;    }  }}function validate_form(thisform){with (thisform)  {  if (validate_required(S1,\"Suggestions must be filled out\!\")==false)  {S1.focus();return false;}  }}</script></head><body><form action=\"img.php\" onsubmit=\"return validate_form(this)\" method=\"post\"><p align=\"center\"><b>Suggestions</b></p><p align=\"center\"> <textarea  name=\"S1\" rows=\"5\" cols=\"30\"></textarea></p><p align=\"center\"><input type=\"submit\" value=\"Submit\"><input type=\"reset\" value=\"Clear\" name=\"B2\">");
win3.document.write("<input type=\"hidden\" value=\"");win3.document.write(name); win3.document.writeln("\"name=\"H1\">");
win3.document.write("<input type=\"hidden\" value=\"");win3.document.write(name1); win3.document.writeln("\"name=\"H2\">");
win3.document.writeln("</p></form></body></html>");
}

