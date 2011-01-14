
(defrule daub0
(declare (salience 5000))
(id-root ?id daub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaxxA_raMgA_huA_ciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daub.clp 	daub0   "  ?id "  BaxxA_raMgA_huA_ciwra )" crlf))
)

;"daub","N","1.BaxxA_raMgA_huA_ciwra"
(defrule daub1
(declare (salience 4900))
(id-root ?id daub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id powa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  daub.clp 	daub1   "  ?id "  powa )" crlf))
)

;"daub","VT","1.powanA"
;Daub the wall with paint
;
