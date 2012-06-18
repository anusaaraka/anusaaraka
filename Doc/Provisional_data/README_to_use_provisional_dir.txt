##Readme to use  provisional directory.
#######################################
In order to check the existence of clp file : 
    RUN:: 
	   sh check-existence-for-clp-file.sh <word>
             ( EX::  sh check-existence-for-clp-file.sh above )
    (NOTE:: 1. If the file already exists in WSD directory then file is copied to the provisional directory.
            2. If file does not exists then write a new file in provisional directory.
            3. To check the existence of a tam file :
                    Run:  sh check-existence-for-clp-file.sh are_en_tam )

To Run Anusaaraka::
-----------------
 User has an option to Use provisional directory.
    --> To Use  :     Anusaaraka_stanford.sh  sample 0 True
        NOTE::  Where '0' is to get default parse , sample is an input file to test.
