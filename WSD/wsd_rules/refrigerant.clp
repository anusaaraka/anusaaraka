
(defrule refrigerant0
(declare (salience 5000))
(id-root ?id refrigerant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaNdA_karane_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refrigerant.clp 	refrigerant0   "  ?id "  TaNdA_karane_vAlA )" crlf))
)

;"refrigerant","Adj","1.TaNdA_karane_vAlA"
;In hot countries there are many refrigerant AC's being used.  
;
(defrule refrigerant1
(declare (salience 4900))
(id-root ?id refrigerant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TaNdAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  refrigerant.clp 	refrigerant1   "  ?id "  TaNdAI )" crlf))
)

;"refrigerant","N","1.TaNdAI"
;Solid carbon dioxide acts as a refrigerant in refrigerator.
;
