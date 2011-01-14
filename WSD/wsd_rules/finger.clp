
(defrule finger0
(declare (salience 5000))
(id-root ?id finger)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fingering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id XIre_se_CUnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  finger.clp  	finger0   "  ?id "  XIre_se_CUnA )" crlf))
)

;"fingering","N","1.XIre_se_CUnA"
;He was fingering his guitar preparing to play the same at the function.
;
(defrule finger1
(declare (salience 4900))
(id-root ?id finger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uMgalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finger.clp 	finger1   "  ?id "  uMgalI )" crlf))
)

;"finger","N","1.uMgalI"
;He has six fingers on one hand.
;
(defrule finger2
(declare (salience 4800))
(id-root ?id finger)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uMgalI_se_CU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  finger.clp 	finger2   "  ?id "  uMgalI_se_CU )" crlf))
)

;"finger","V","1.uMgalI_se_CUnA"
;He fingered the gun kept in his pocket.
;
