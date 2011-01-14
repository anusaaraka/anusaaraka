
(defrule interim0
(declare (salience 5000))
(id-root ?id interim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interim.clp 	interim0   "  ?id "  alpakAlIna )" crlf))
)

;"interim","Adj","1.alpakAlIna"
;The discount is for the interim period.
;
(defrule interim1
(declare (salience 4900))
(id-root ?id interim)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarima_avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interim.clp 	interim1   "  ?id "  anwarima_avaXi )" crlf))
)

;"interim","N","1.anwarima_avaXi"
;The university is holding convocation in the interim.
;
