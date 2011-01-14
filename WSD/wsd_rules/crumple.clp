
(defrule crumple0
(declare (salience 5000))
(id-root ?id crumple)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silavateM_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crumple.clp 	crumple0   "  ?id "  silavateM_dAla )" crlf))
)

(defrule crumple1
(declare (salience 4900))
(id-root ?id crumple)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silavateM_pada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crumple.clp 	crumple1   "  ?id "  silavateM_pada )" crlf))
)

;"crumple","V","1.silavateM_dAlanA[padanA]"
;Cotton fabrics crumple easily
;--"2.Xvaswa_honA"
;All support of the proposal has crumpled.
;
