
(defrule saunter0
(declare (salience 5000))
(id-root ?id saunter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahalakaxamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saunter.clp 	saunter0   "  ?id "  cahalakaxamI )" crlf))
)

;"saunter","N","1.cahalakaxamI"
;why don't you have a saunter around the shops.               
;
(defrule saunter1
(declare (salience 4900))
(id-root ?id saunter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cahala_kaxamI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  saunter.clp 	saunter1   "  ?id "  cahala_kaxamI_kara )" crlf))
)

;"saunter","V","1.cahala_kaxamI_karanA"
;He was slowly sauntering towards the garden.
;
