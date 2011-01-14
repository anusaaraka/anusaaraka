
(defrule upland0
(declare (salience 5000))
(id-root ?id upland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcI_jagaha_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upland.clp 	upland0   "  ?id "  UzcI_jagaha_kA )" crlf))
)

;"upland","Adj","1.UzcI_jagaha_kA/UzcA"
;Upland regions of Norway are very cold.
;
(defrule upland1
(declare (salience 4900))
(id-root ?id upland)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcI_BUmi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upland.clp 	upland1   "  ?id "  UzcI_BUmi )" crlf))
)

;"upland","N","1.UzcI_BUmi"
;It is very cold in the uplands of Norway.
;
