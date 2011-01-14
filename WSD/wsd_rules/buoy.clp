
(defrule buoy0
(declare (salience 5000))
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warerI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoy.clp 	buoy0   "  ?id "  warerI )" crlf))
)

;"buoy","N","1.warerI{pAnI_para_wEranevAlA_cihna}"
;The life guard threw a life buoy at the drowning lady.
;
(defrule buoy1
(declare (salience 4900))
(id-root ?id buoy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wErawA_huA_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buoy.clp 	buoy1   "  ?id "  wErawA_huA_raKa )" crlf))
)

;"buoy","VT","1.wErawA_huA_raKanA"
;The life vest buoyed him up
;
