
(defrule quarry0
(declare (salience 5000))
(id-root ?id quarry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawWara_kI_KAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarry.clp 	quarry0   "  ?id "  pawWara_kI_KAna )" crlf))
)

;"quarry","N","1.pawWara_kI_KAna/SikAra"
;--"2.pawWara_kI_KAna"
;The quarry was polluting the atmosphere in the village
;--"3.SikAra"
;The hunters followed their quarry into the thick forest.
;
(defrule quarry1
(declare (salience 4900))
(id-root ?id quarry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawWara_Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  quarry.clp 	quarry1   "  ?id "  pawWara_Koxa )" crlf))
)

;"quarry","VT","1.pawWara_Koxa"
;They are quarrying marble for the constructions.
;Quarrying is done on the hillside
;
