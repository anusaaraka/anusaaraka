 (open "ol_vachan_to_be_decided.dat" vachan_fp "r")
 (open "ol_agmt_control_fact.dat" agmt_cntrl_fp "r")
 (open "ol_pada_control_fact.dat" pada_cntrl_fp "r")
 (open "ol_pada.dat" ol_pada_file "r")
 (open "ol_pada_debug.dat" ol_pada_debug_fp "r")
 (load "global_path.clp")
 (load-facts "parser_type.dat")
 

 (deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (slot preposition (default 0))(slot Hin_position (default 0)))

 (defrule  load_link_pada
 ?f<-(Parser_used Link-Parser)
 =>
 (load-facts "word.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "pada_debug.dat")
 (assert (question "Enter the Sentence ::  "))
 (assert (question1 "Enter the Sentence ::  "))
 (assert (next_id 1))
 (batch* "pada_debug.clp")
 )

 (defrule  load_std_pada
 ?f<-(Parser_used Stanford-Parser)
 =>
 (load-facts "word.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "pada_debug.dat")
 (assert (question "Enter the Sentence ::  "))
 (assert (question1 "Enter the Sentence ::  "))
 (assert (next_id 1))
 (batch* "pada_debug.clp")
 )


 (defrule  load_ol_pada
 ?f<-(Parser_used Open-Logos-Parser)
 =>
 (load-facts "word.dat")
 (load-facts "English_sentence.dat")
 (load-facts "lwg_info.dat")
 (load-facts "pada_id_info.dat")
 (load-facts "ol_pada_debug.dat")
 (assert (question "Enter the Sentence ::  "))
 (assert (question1 "Enter the Sentence ::  "))
 (assert (next_id 1))
 (batch* "pada_debug.clp")
 )

(system clear)
(run)
