
(defrule chisel0
(declare (salience 5000))
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CenI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel0   "  ?id "  CenI )" crlf))
)

;"chisel","N","1.CenI"
;Chisel is used in shaping wood,stone etc.
;
(defrule chisel1
(declare (salience 4900))
(id-root ?id chisel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CenI_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chisel.clp 	chisel1   "  ?id "  CenI_se_kAta )" crlf))
)

;"chisel","VT","1.CenI_se_kAtanA"
;The artist chiselled the marble.
;
