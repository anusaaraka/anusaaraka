<?php
################################# Change Path of File/Folder ############
$txtfile = "/var/www/upload/details.txt";
$file = fopen($txtfile,"a");
################################# Writing into File ############
$S1 = $_POST["S1"];
$H1 = $_POST["H1"];
$H2 = $_POST["H2"];
echo "<b>Word:</b>$H1<br>";
echo "<b>Sentence:</b> $H2<br>";
echo "<b>User Info:</b>$S1<br>";

fwrite($file, "$H1\t");
fwrite($file, "$H2\t");
fwrite($file, "$S1\t\n");
fclose($file);
echo "<br><b>The above Information saved. Please Click on Close</b><br>\n";
echo "<br><a href=\"javascript:self.close()\"> Close</a>";
?>
