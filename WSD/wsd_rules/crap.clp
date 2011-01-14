
(defrule crap0
(declare (salience 5000))
(id-root ?id crap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakavAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crap.clp 	crap0   "  ?id "  bakavAsa )" crlf))
)

;"crap","N","1.bakavAsa"
;Even teachers got fed-up with her crap. 
;
(defrule crap1
(declare (salience 4900))
(id-root ?id crap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mala_ganxagI_Axi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crap.clp 	crap1   "  ?id "  mala_ganxagI_Axi )" crlf))
)

;"crap","V","1.mala_ganxagI_Axi"
;Her dog use to crap on every body's lawn. 
;
