
(defrule cough0
(declare (salience 5000))
(id-root ?id cough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAzsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cough.clp 	cough0   "  ?id "  KAzsI )" crlf))
)

;"cough","N","1.KAzsI/KoKI"
;Her son has developed a dry cough.
;
(defrule cough1
(declare (salience 4900))
(id-root ?id cough)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cough.clp 	cough1   "  ?id "  KAzsa )" crlf))
)

;"cough","VT","1.KAzsanA/KaKAranA"
;The smoker coughs all day.
;
