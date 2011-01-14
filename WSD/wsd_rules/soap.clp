
(defrule soap0
(declare (salience 5000))
(id-root ?id soap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAbuna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soap.clp 	soap0   "  ?id "  sAbuna )" crlf))
)

;"soap","N","1.sAbuna"
;Every one in a family should have a separate soap.
;
(defrule soap1
(declare (salience 4900))
(id-root ?id soap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAbuna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soap.clp 	soap1   "  ?id "  sAbuna_lagA )" crlf))
)

;"soap","V","1.sAbuna_lagAnA"
;Ram soaped his hand when a insect touch the hand.
;
