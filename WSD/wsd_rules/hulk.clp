
(defrule hulk0
(declare (salience 5000))
(id-root ?id hulk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hulking )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sWUlakAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hulk.clp  	hulk0   "  ?id "  sWUlakAya )" crlf))
)

;"hulking","Adj","1.sWUlakAya"
;tArajZAna kA 'hulking' Akqwi WA.
;
(defrule hulk1
(declare (salience 4900))
(id-root ?id hulk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tUtA_huA_purAnA_jahAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hulk.clp 	hulk1   "  ?id "  tUtA_huA_purAnA_jahAja )" crlf))
)

;"hulk","N","1.tUtA huA purAnA jahAja"
;samuxra wata para eka 'hulk' hE
;
;