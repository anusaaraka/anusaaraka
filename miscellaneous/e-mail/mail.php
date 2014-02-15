<html>
<body>

<?php
$to = $_GET['email'];
$cc = $_GET['Cc'];
$subject = $_GET['subject'];
$message = $_GET['message'];
$message = str_replace( "Root" , "\nRoot" , $message );
$message = str_replace( "Sentence" , "\nSentence" , $message );
$message = str_replace( "Hindi" , "\nHindi" , $message );
$message = str_replace( "Manual" , "\nManual" , $message );
$message = str_replace( "Suggestion" , "\nSuggestion" , $message );
$from = "root@localhost";
$headers = "From:" . $from;
$headers = "Cc:" .$cc. "\n";
$ret = mail($to,$subject,$message,$headers);
?>

</body>
</html>
