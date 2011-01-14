
(defrule dot0
(declare (salience 5000))
(id-root ?id dot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dot.clp 	dot0   "  ?id "  binxu )" crlf))
)

;"dot","N","1.binxu"
;Dots are important in a graphor geometry
;Join up the dots to complete the drawing 
;A dot is used as a full stop at the end of a sentance
;The island was just a dot in the occan
;
(defrule dot1
(declare (salience 4900))
(id-root ?id dot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxu_se_cihniwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dot.clp 	dot1   "  ?id "  binxu_se_cihniwa_kara )" crlf))
)

;"dot","V","1.binxu_se_cihniwa_karanA"
;The students wre asked to dot the cities in the map.
;--"2.jagaha-jagaha_PElAnA"
;The sky was dotted with stars on the dot - le; ij 
;He's very punstual always arrive on the dot
;
