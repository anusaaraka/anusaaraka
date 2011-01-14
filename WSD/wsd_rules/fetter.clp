
(defrule fetter0
(declare (salience 5000))
(id-root ?id fetter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bedZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetter.clp 	fetter0   "  ?id "  bedZI )" crlf))
)

;"fetter","N","1.bedZI"
;The thief was put in fetters at the jail.
;--"2.baMXana"
;I am now free of fetters of the society.
;
(defrule fetter1
(declare (salience 4900))
(id-root ?id fetter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMXana_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fetter.clp 	fetter1   "  ?id "  baMXana_bAzXa )" crlf))
)

;"fetter","V","1.baMXana_bAzXanA"
