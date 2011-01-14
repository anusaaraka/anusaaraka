
(defrule clump0
(declare (salience 5000))
(id-root ?id clump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clump.clp 	clump0   "  ?id "  gucCA )" crlf))
)

;"clump","N","1.gucCA"
;A small clump of rose plants is there in our garden.
;
(defrule clump1
(declare (salience 4900))
(id-root ?id clump)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAke_ke_sAWa_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clump.clp 	clump1   "  ?id "  XamAke_ke_sAWa_cala )" crlf))
)

;"clump","V","1.XamAke_ke_sAWa_calanA"
;The soldiers clumped their feet while marching.
;
