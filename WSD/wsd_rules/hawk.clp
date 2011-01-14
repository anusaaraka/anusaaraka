
(defrule hawk0
(declare (salience 5000))
(id-root ?id hawk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hawk.clp 	hawk0   "  ?id "  bAjZa )" crlf))
)

;"hawk","N","1.bAjZa"
;Hawk is a flesh eating bird .
;bAjZa eka mAzsAhArI pakRI hE .
;
(defrule hawk1
(declare (salience 4900))
(id-root ?id hawk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PerI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hawk.clp 	hawk1   "  ?id "  PerI_lagA )" crlf))
)

;"hawk","V","1.PerI_lagAnA"
;He hawks vegetables daily from door to door .
;vaha rojZa Gara Gara jA kara sabjZI kI PerI lagAwA hE .
;
