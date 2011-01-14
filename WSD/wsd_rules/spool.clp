
(defrule spool0
(declare (salience 5000))
(id-root ?id spool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spool.clp 	spool0   "  ?id "  caraKI )" crlf))
)

;"spool","N","1.caraKI"
;We always see spool on the festival Basant.
;
(defrule spool1
(declare (salience 4900))
(id-root ?id spool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caraKI_para_lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spool.clp 	spool1   "  ?id "  caraKI_para_lapeta )" crlf))
)

;"spool","V","1.caraKI_para_lapetanA"
;We spool thread to fly kites.
;
