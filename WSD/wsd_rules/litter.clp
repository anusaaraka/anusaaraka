
(defrule litter0
(declare (salience 5000))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kUdA-karakata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter0   "  ?id "  kUdA-karakata )" crlf))
)

;"litter","N","1.kUdA-karakata"
;A lot of litter is piled up outside the locality.
;--"2.eka_sAWa_pExA_hue_bacce"
;A litter of pups.
;--"3.pAlakI"
;In some parts of the country even now litters are used for travelling.
;
(defrule litter1
(declare (salience 4900))
(id-root ?id litter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biKera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  litter.clp 	litter1   "  ?id "  biKera )" crlf))
)

;"litter","V","1.biKeranA"
;All kinds of things are found littered on roads.
;
