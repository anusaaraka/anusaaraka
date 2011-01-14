
(defrule roof0
(declare (salience 5000))
(id-root ?id roof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roof.clp 	roof0   "  ?id "  Cawa )" crlf))
)

;"roof","N","1.Cawa"
;Our house is very small but at least we've got a roof  over our heads. 
;
(defrule roof1
(declare (salience 4900))
(id-root ?id roof)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cawa_pAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roof.clp 	roof1   "  ?id "  Cawa_pAta )" crlf))
)

;"roof","VT","1.Cawa_pAtanA"
;Her house is roofed with red tiles.
;
