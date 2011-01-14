
(defrule decease0
(declare (salience 5000))
(id-root ?id decease)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id deceased )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  decease.clp  	decease0   "  ?id "  mqwa )" crlf))
)

;"deceased","Adj","1.mqwa"
;He is deceased
;
(defrule decease1
(declare (salience 4900))
(id-root ?id decease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mrqwyu_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decease.clp 	decease1   "  ?id "  mrqwyu_pA )" crlf))
)

;"decease","VT","1.mrqwyu_pAnA"
;
;
