
(defrule bandage0
(declare (salience 5000))
(id-root ?id bandage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bandage.clp 	bandage0   "  ?id "  pattI )" crlf))
)

;"bandage","N","1.pattI"
;He tied a bandage roud the wounded leg.
;
(defrule bandage1
(declare (salience 4900))
(id-root ?id bandage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bandage.clp 	bandage1   "  ?id "  pattI_bAzXa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* " bandage.clp   bandage1   "  ?id " para)" crlf)
)
(assert (kriyA_id-object_viBakwi ?id para))
)

;"bandage","VT","1.pattI_bAzXanA"
;He bandaged up his wounded leg.
;
