
(defrule taxi0
(declare (salience 5000))
(id-root ?id taxi)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tEksI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taxi.clp 	taxi0   "  ?id "  tEksI )" crlf))
)

(defrule taxi1
(declare (salience 4900))
(id-root ?id taxi)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_jahAjZa_ko_jZamIna_para_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  taxi.clp 	taxi1   "  ?id "  havAI_jahAjZa_ko_jZamIna_para_calA )" crlf))
)

;"taxi","VTI","1.havAI_jahAjZa_ko_jZamIna_para_calAnA"
;The pilot taxied the plane.
;
;