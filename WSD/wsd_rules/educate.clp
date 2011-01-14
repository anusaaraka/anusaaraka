
(defrule educate0
(declare (salience 5000))
(id-root ?id educate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id educated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SikRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  educate.clp  	educate0   "  ?id "  SikRiwa )" crlf))
)

;"educated","Adj","1.SikRiwa"
;The ruls are for the educated.
;
(defrule educate1
(declare (salience 4900))
(id-root ?id educate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRA_praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  educate.clp 	educate1   "  ?id "  SikRA_praxAna_kara )" crlf))
)

;"educate","VT","1.SikRA_praxAna_karanA"
;We have to educate the masses.
;
;
