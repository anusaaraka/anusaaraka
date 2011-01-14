
(defrule adore0
(declare (salience 5000))
(id-root ?id adore)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id adoring )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pyAraBarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  adore.clp  	adore0   "  ?id "  pyAraBarA )" crlf))
)

;"adoring","Adj","1.pyAraBarA_"
;All the passers-by gave adoring look to the baby.
;
(defrule adore1
(declare (salience 4900))
(id-root ?id adore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_prema_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  adore.clp 	adore1   "  ?id "  bahuwa_prema_kara )" crlf))
)

;default_sense && category=verb	ArAXanA_kara	0
;"adore","V","1.ArAXanA_karanA"
;I adore my parents.
;--"2.bahuwa_pasanxa_karanA"
;I adore rail journey.
;
;
