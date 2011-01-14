
(defrule hundred0
(declare (salience 5000))
(id-root ?id hundred)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hundreds )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sEMkadZoM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hundred.clp  	hundred0   "  ?id "  sEMkadZoM )" crlf))
)

;"hundreds","N","1.sEMkadZoM"
;kumBa mele meM logoM kI saMKyA 'hundreds' howI hE
;
(defrule hundred1
(declare (salience 4900))
(id-root ?id hundred)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hundred.clp 	hundred1   "  ?id "  sO )" crlf))
)

;"hundred","N","1.sO/Sawa"
;muhUrwa meM 'hundred' jana We.
;
;