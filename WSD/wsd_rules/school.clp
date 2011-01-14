
(defrule school0
(declare (salience 5000))
(id-root ?id school)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id schooling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praSikRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  school.clp  	school0   "  ?id "  praSikRaNa )" crlf))
)

;"schooling","N","1.praSikRaNa"
;My parents pay for my schooling.
;
(defrule school1
(declare (salience 4900))
(id-root ?id school)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixyAlaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  school.clp 	school1   "  ?id "  vixyAlaya )" crlf))
)

(defrule school2
(declare (salience 4800))
(id-root ?id school)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSikRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  school.clp 	school2   "  ?id "  praSikRiwa_kara )" crlf))
)

;"school","V","1.praSikRiwa karanA"
;My dad schooled me in a reputed educational institution.   
;
;