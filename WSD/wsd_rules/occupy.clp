
(defrule occupy0
(declare (salience 5000))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id occupied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  occupy.clp  	occupy0   "  ?id "  vyaswa )" crlf))
)

;"occupied","Adj","1.vyaswa"
;He fully occupied himself with hacking computer codes.
;
(defrule occupy1
(declare (salience 4900))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy1   "  ?id "  raha )" crlf))
)

;"occupy","VT","1.rahanA"
;The new flat was occupied immediately.
;--"2.kabjZA karanA"
;The army occupied the enemy's capital.
;--"3.saMBAlanA"
;He occupies a senior position in the firm.
;--"4.jZarUrawa honA"
;The bed occupies a huge space.
;
;