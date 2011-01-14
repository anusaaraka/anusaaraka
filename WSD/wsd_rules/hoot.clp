
(defrule hoot0
(declare (salience 5000))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOragula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot0   "  ?id "  SOragula )" crlf))
)

;"hoot","N","1.SOragula"
;BIdZa ke BArI 'hoot'(Soragula) kI AvAja meM newAjI kA BARaNa samaJa nahIM padZA.
;
(defrule hoot1
(declare (salience 4900))
(id-root ?id hoot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillAkara_BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoot.clp 	hoot1   "  ?id "  cillAkara_BagA )" crlf))
)

;"hoot","V","1.cillAkara_BagAnA"
;bacce Apasa mEM JagadZa rahe We unako'hoot'(cillA kara BagA xiyA.)
;
