/*
Copyright (C) 2008 kiran kumar <kiranap at gmail.com >

This program is free software; you can redistribute it and/or 
modify it under the terms of the GNU General Public License 
as published by the Free Software Foundation; either 
version 2 of the License, or (at your option) any later 
version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program; if not, write to the Free Software
Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
*/
function openwindow(name)
{
str=name;
if (str.match(/^[a-zA-Z].+(\!)$/g) != null) {
	re=/\!/;
	check=str.replace(re,"");
	alert (check);
}else if (str.match(/^[a-zA-Z].+(\.)$/g) != null) {
	re=/\./;
	check=str.replace(re,"");
	alert (check);
}else if (str.match(/^[a-zA-Z].+(\,)$/g) != null) {
	re=/\,/;
	check=str.replace(re,"");
	alert (check);
}else{
	check=name;
}
var file = "help/example-" + check + ".htm";
//var file = "tmp_anu_dir/tmp_help_dir/example-" + check + ".htm";
//var file = "tmp_anu_dir/tmp_help_dir/example-" + name + ".htm";
window.open(file,"mywindow","location=1,status=1,scrollbars=1,width=550,height=350");
}


































































