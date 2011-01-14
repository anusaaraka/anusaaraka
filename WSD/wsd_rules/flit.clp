
(defrule flit0
(declare (salience 5000))
(id-root ?id flit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_jAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flit.clp 	flit0   "  ?id "  BAga_jAnA )" crlf))
)

;"flit","N","1.BAga_jAnA"
;He did a flit to avoid his creditors.
;
(defrule flit1
(declare (salience 4900))
(id-root ?id flit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iXara_uXara_udZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flit.clp 	flit1   "  ?id "  iXara_uXara_udZa )" crlf))
)

;"flit","V","1.iXara_uXara_udZanA"
;He keeps on flitting from one job to another.
;
