
(defrule damp0
(declare (salience 5000))
(id-root ?id damp)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damp.clp 	damp0   "  ?id "  nama )" crlf))
)

;"damp","Adj","1.nama/gIlA"
;He was wearing clothes damp with perspiration
;
(defrule damp1
(declare (salience 4900))
(id-root ?id damp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damp.clp 	damp1   "  ?id "  namI )" crlf))
)

;"damp","N","1.namI"
;She hung the damp clothes to dry properly.
;--"2.uwsAha_hInawA"
;They reconciled to the damp caused by the accident.
;
(defrule damp2
(declare (salience 4800))
(id-root ?id damp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  damp.clp 	damp2   "  ?id "  nama_kara )" crlf))
)

;"damp","VT","1.nama_karanA"
;Don't dampen the powder, it will get sticky.
;--"2.hawowsAha_karanA"
;Their spirits dampened after their introduction to the new teacher.
;
