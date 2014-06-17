;Commented by Nandini(8-5-14) ;root word is loaded so the clp will be different.
;(defrule load0
;(declare (salience 5000))
;(id-root ?id load)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id loaded )
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_word_mng ?id BAriwa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  load.clp  	;load0   "  ?id "  BAriwa )" crlf))
;)

;"loaded","Adj","1.BAriwa"
;A loaded dice.
;--"2.BarA_huA"
;He carries a loaded gun.
;--"3.nihiwa arWa honA"
;A loaded statement.
;A loaded question.
;
(defrule load1
(declare (salience 3000));salience change by Nandini 
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id boJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load1   "  ?id "  boJA )" crlf))
)

(defrule load2
(declare (salience 4800))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load2   "  ?id "  lAxa )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;The available load is not enough to meet the requirements of the city.[hinkoja]
;upalabXa vixyuwa BAra Sahara kI AvaSyakwAoM ko paryApwa nahIM hE.
(defrule load3
(declare (salience 4950))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(saMjFA-to_kqxanwa  ?id2 ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixyuwa_BAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load3   "  ?id "  vixyuwa_BAra )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;We saw a load of houses before we bought this one. [OALD]
;yaha Gara KarIxane ke pahale hamane bahuwa Gara xeKe. 
(defrule load4
(declare (salience 4950))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 of)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load4   "  ?id "  bahuwa )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;There is loads to do today. [OALD]
;Aja karane ke liye bahuwa hE.
(defrule load5
(declare (salience 4950))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load5   "  ?id "  bahuwa )" crlf))
)


;@@@--- Added by Nandini(8-5-14)
;Teaching loads have increased in all types of school.[OALD]
; saba prakAra ke vixyAlayoM  meM siKAne kA BAra baDa cukA hE.
(defrule load6
(declare (salience 4950))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 increase)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load6   "  ?id "  BAra )" crlf))
) 

;@@@--- Added by Nandini(8-5-14)
;Extra warmth from sunlight can put an additional load on the air-conditioning system.[OALD]
(defrule load7
(declare (salience 4950))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 put)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load7   "  ?id "  BAra )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;She was loaded down with bags of groceries.[OALD]
;vaha kirAnoM ke WEloM ke sAWa KUba_laxI huI WI.
(defrule load8
(declare (salience 4850))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KUba_laxA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " load.clp	load8  "  ?id "  " ?id1 "  KUba_laxA_ho )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;Have you loaded the software?[OALD]
;kyA Apane soYPtaveyara loda kara cuke hEM?
(defrule load9
(declare (salience 4850))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id loda_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load9   "  ?id "  loda_kara )" crlf))
)

;@@@--- Added by Nandini(8-5-14)
;She loaded film into the camera.[OALD]
;usane kEmare ke aMxara sinemA Bara xiyA.
(defrule load10
(declare (salience 4850))
(id-root ?id load)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  Bara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  load.clp 	load10   "  ?id "  Bara_xe )" crlf))
)


;"load","V","1.lAxanA"
;Load the truck.
;--"2.BaranA"
;Load the software.
;
;
