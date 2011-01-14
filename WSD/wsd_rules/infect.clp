
(defrule infect0
(declare (salience 5000))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUwa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect0   "  ?id "  CUwa_lagA )" crlf))
)

(defrule infect1
(declare (salience 4900))
(id-root ?id infect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUwa_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infect.clp 	infect1   "  ?id "  CUwa_laga )" crlf))
)

;"infect","VT","1.CUwa_lagAnA[laganA]"
;Your children have infected you with this bead cold
;
