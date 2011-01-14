
(defrule revel0
(declare (salience 5000))
(id-root ?id revel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XUmaXAma_kI_xAvawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revel.clp 	revel0   "  ?id "  XUmaXAma_kI_xAvawa )" crlf))
)

;"revel","N","1.XUmaXAma_kI_xAvawa"
;Her friends were busy in midnight revel    
;
(defrule revel1
(declare (salience 4900))
(id-root ?id revel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Amoxa_pramoxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revel.clp 	revel1   "  ?id "  Amoxa_pramoxa_kara )" crlf))
)

;"revel","VT","1.Amoxa_pramoxa_karanA"
;They revelled till late at night.
;
