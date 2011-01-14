
(defrule supply0
(declare (salience 5000))
(id-root ?id supply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saplAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supply.clp 	supply0   "  ?id "  saplAI )" crlf))
)

;"supply","N","1.saplAI"
;The supply of blood to the heart should be good.
;
(defrule supply1
(declare (salience 4900))
(id-root ?id supply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saplAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  supply.clp 	supply1   "  ?id "  saplAI_kara )" crlf))
)

;"supply","V","1.saplAI_karanA"
;The baker supplied us bread.
;
