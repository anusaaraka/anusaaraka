;This file is written by Shirisha Manju

(defglobal ?*dic_fp1*  = dic_fp1)

(defrule print_com
(declare (salience 1010))
=>
	(printout  ?*dic_fp1* "----------------- meanings with some logic -------------" crlf)
)
;--------------------------------------------------------------------------------------------------------
;We can broadly describe physics as a study of the basic laws of nature and their manifestation in different natural phenomena. hama prakqwi ke buniyAxI niyamoM ke Ora alaga prAkqwika pariGatanA meM unake AvirBAva ke aXyayana ke jEsA BOwika vijFAna mote wOra para varNana_kara sakawe hEM.
(defrule print_corrected_mng_info
(declare (salience 900))
?f0<-(id-root-corrected_mng ?id ?root $?man_mng) 
;(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?id $? ?eng_wrds)
=>
	(retract ?f0)
	(printout ?*dic_fp1*  ?root" :: "(implode$ $?man_mng) " ---> implemented" crlf)
)
;--------------------------------------------------------------------------------------------------------
(defrule leftout_single_word_and_single_mng_restricted
(declare (salience 150))
(left_out_words ?aid)
(left_out_mngs ?mid)
?f0<-(manual_id-mng ?mid $?mng)
(anu_id-word-possible_mngs ?aid $?)
(man_id-word-possible_mngs ?mid $?)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $?a1 ?aid $?a2 ?eng_wrds)
=>
        (retract ?f0)
        (printout ?*dic_fp1*  ?eng_wrds" :: "(implode$ $?mng) " ---> suggestion" crlf)
)
;--------------------------------------------------------------------------------------------------------
(defrule leftout_single_word_and_single_mng
(declare (salience 100))
(left_out_words ?aid)
(not (anu_id-word-possible_mngs ?aid $?))
(not (man_id-word-possible_mngs ?mid $?))
(left_out_mngs ?mid)
?f0<-(manual_id-mng ?mid $?mng)
(hin_pos-hin_mng-eng_ids-eng_words ? ?hnd_mng  $?a1 ?aid $?a2 ?eng_wrds)
=>
        (retract ?f0)
        (printout ?*dic_fp1*  ?eng_wrds" :: "(implode$ $?mng) " ---> suggestion" crlf)
)
;--------------------------------------------------------------------------------------------------------
;I can not sell my friend for all the gold in the world.
;mEM [apane] miwra ko saMsAra kA pUrA sonA milane para BI nahIM beca sakawA.
(defrule get_apane_mng_using_next_word
(declare (salience 800))
?f1<-(left_out_mngs $?pre ?mid $?po)
(manual_id-mng ?mid ?m_mng&apane|apanA|apanI)
(anu_id-anu_mng-sep-man_id-man_mng ?aid $?m - =(+ ?mid 1) $?m1)
(hindi_id_order $? ?aid1 ?aid $?)
?f0<-(left_out_words $?pre1 ?aid1 $?po1)
(id-word ?aid1 my|her|his|him)
(id-Apertium_output ?aid1 $?mng)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid1 $? ?eng_wrd)
=>
	(retract ?f0 ?f1)
	(assert (left_out_mngs $?pre $?po))
	(assert	(left_out_words $?pre1 $?po1))
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid1 $?mng - ?mid  ?m_mng))
	(printout ?*dic_fp1*  ?eng_wrd" :: " ?m_mng " ---> implemented" crlf)
)
;--------------------------------------------------------------------------------------------------------
;It is mine by right. He must be very worried about me.
;He returned shortly, shaking his head. 
(defrule get_emphatic_for_prev_word
(declare (salience 800))
?f1<-(left_out_mngs $?pre ?mid $?po)
(manual_id-mng ?mid hI)
(not (id-word ? only))
?f0<-(anu_id-anu_mng-sep-man_id-man_mng ?aid $?m - =(- ?mid 1) $?m1)
(hin_pos-hin_mng-eng_ids-eng_words ? ? $? ?aid $? ?eng_wrd)
=>
	(retract ?f0 ?f1)
	(assert (anu_id-anu_mng-sep-man_id-man_mng ?aid $?m - =(- ?mid 1) $?m1 hI))
	(assert (left_out_mngs $?pre $?po))
	(printout ?*dic_fp1* "emphatic: " ?eng_wrd" :: "(implode$ $?m1) " hI" " ---> implemented" crlf)
)
;--------------------------------------------------------------------------------------------------------
