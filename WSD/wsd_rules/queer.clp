
(defrule queer0
(declare (salience 5000))
(id-root ?id queer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajIba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  queer.clp 	queer0   "  ?id "  ajIba )" crlf))
)

;"queer","Adj","1.ajIba"
;The food had a queer smell
;
(defrule queer1
(declare (salience 4900))
(id-root ?id queer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  queer.clp 	queer1   "  ?id "  gadZabadZa_kara )" crlf))
)

;"queer","V","1.gadZabadZa_karanA"
;I would have got the job had she not queered it.
;
