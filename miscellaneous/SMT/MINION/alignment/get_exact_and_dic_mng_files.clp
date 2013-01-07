;This file is written by Shirisha Manju (5th Dec 2012)
;This file generates two files namely : 
;  	mngs_aligned_with_anu.dat : which contains words with both anu meaning and manual meaning is same
;  	mngs_aligned_with_dic.dat : which contains words with dictionary meaning and  manual meaning is same

(defglobal ?*dic_mng-file* = mng_fp)
(defglobal ?*exact-mng-file* = mng_fp1)
(defglobal ?*minion-mng-file1* = mng_fp2)

(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

;---------------------------------genereting single verb match ----------------------------------------------------
(defrule get_mngs_aligned_for_verb
(declare (salience 750))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?eng_wrds)
(man_verb_count-verbs 1 ?mid)
(anu_verb_count-verbs 1 ?aid)
(para_id-sent_id-no_of_words	?	?sid	?)
=>
        (retract ?f0)
        (printout ?*minion-mng-file1*  ?eng_wrds"	"(implode$ $?mng) "	"(implode$ $?mng1) "	[ "?sid" ]" crlf)
)
;---------------------------------- generating exact match file -----------------------------------------------------
(defrule get_mngs_aligned_with_anu
(declare (salience 700))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?eng_wrds)
(para_id-sent_id-no_of_words    ?       ?sid    ?)
=>
	(retract ?f0)
        (printout ?*exact-mng-file*  ?eng_wrds"	"(implode$ $?mng) "	"(implode$ $?mng) "	[ "?sid" ]"crlf)
)
;---------------------------------- generating dictionary match file -------------------------------------------------
(defrule get_mngs_aligned_with_dic
(declare (salience 600))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(pada_info (group_head_id ?aid) (preposition ?pid&~0))
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?eng_wrds)
(para_id-sent_id-no_of_words    ?       ?sid    ?)
=>
        (retract ?f0)
	(printout ?*dic_mng-file* ?eng_wrds"	"(implode$ $?mng) "	"(implode$ $?mng1) "	[ "?sid" ]" crlf)
)
;----------------------------------------------------------------------------------------------------------------------
(defrule get_mngs_aligned_with_dic1
(declare (salience 500))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng_tmp ?aid $?mng - ?mid $?mng1)
(test (neq $?mng $?mng1))
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?eng_wrds)
(para_id-sent_id-no_of_words    ?       ?sid    ?)
=>
        (retract ?f0)
	(printout ?*dic_mng-file* ?eng_wrds"	"(implode$ $?mng) "	"(implode$ $?mng1) "	[ "?sid" ]" crlf)
)
;----------------------------------------------------------------------------------------------------------------------
