
(defrule aggrieve0
(declare (salience 5000))
(id-root ?id aggrieve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id aggrieved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyaWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  aggrieve.clp  	aggrieve0   "  ?id "  vyaWiwa )" crlf))
)

;"aggrieved","Adj","1.vyaWiwa"
;I felt aggrieved at losing my friend.
;
(defrule aggrieve1
(declare (salience 4900))
(id-root ?id aggrieve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  aggrieve.clp 	aggrieve1   "  ?id "  xuKa_xe )" crlf))
)

;"aggrieve","VT","1.xuKa_xenA"
;Ram's exilement aggrieved King Dasharatha.
;
;
