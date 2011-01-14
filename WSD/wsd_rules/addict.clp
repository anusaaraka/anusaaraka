
(defrule addict0
(declare (salience 5000))
(id-root ?id addict)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id addicted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vaSIBUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  addict.clp  	addict0   "  ?id "  vaSIBUwa )" crlf))
)

;"addicted","Adj","1.vaSIBUwa"
;He is highly addicted to alcohol.
;
(defrule addict1
(declare (salience 4900))
(id-root ?id addict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lawa_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  addict.clp 	addict1   "  ?id "  lawa_lagA_huA )" crlf))
)

;"addict","N","1.lawa_lagA_huA"
;He is a cocaine addict.
;He is a T.V. addict.
;
;
