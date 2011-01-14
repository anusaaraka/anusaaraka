
(defrule budge0
(declare (salience 5000))
(id-root ?id budge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  budge.clp 	budge0   "  ?id "  hila )" crlf))
)

;"budge","VI","1.hilanA/hatanA"
;He did not budge from his point of view.
;
(defrule budge1
(declare (salience 4900))
(id-root ?id budge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  budge.clp 	budge1   "  ?id "  hilA )" crlf))
)

;"budge","VT","1.hilAnA/hatAnA/hatanA/hilanA"
;The mule stopped in the middle of the road && refused to budge.
;--"2.hilAnA/hatAnA"
;
