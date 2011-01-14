
(defrule patrol0
(declare (salience 5000))
(id-root ?id patrol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaSwI_tolI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patrol.clp 	patrol0   "  ?id "  gaSwI_tolI )" crlf))
)

;"patrol","N","1.gaSwI_tolI"
;There is a police patrol at the end of the road.
;--"2.gaSwa_lagAnA"
;The guards make an hourly patrol of this site.
;
(defrule patrol1
(declare (salience 4900))
(id-root ?id patrol)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paharA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patrol.clp 	patrol1   "  ?id "  paharA_xe )" crlf))
)

;"patrol","VTI","1.paharA_xenA"
;There are troops that regularly patrol along the border.
;
