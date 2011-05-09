
 (load* "pada.clp")
 (load "global_path.clp")
 (load-facts "parser_type.dat")
 (load-facts "word.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "pada_info_debug.dat")
 (assert (question "Enter the Sentence ::  "))
 (assert (question1 "Enter the Sentence ::  "))
 (assert (next_id 1))
 (batch* "pada_debug.clp")


 (system clear)
 (run)
