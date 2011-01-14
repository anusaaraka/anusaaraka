
(defrule strategic0
(declare (salience 5000))
(id-root ?id strategic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwi_viRayaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strategic.clp 	strategic0   "  ?id "  yukwi_viRayaka )" crlf))
)

(defrule strategic1
(declare (salience 4900))
(id-root ?id strategic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa_kOSala_sambanXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strategic.clp 	strategic1   "  ?id "  yuxXa_kOSala_sambanXI )" crlf))
)

;"strategic","Adj","1.yuxXa kOSala sambanXI"
;His strategic knowledge is excellent.
;
;
