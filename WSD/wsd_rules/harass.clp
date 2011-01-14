
(defrule harass0
(declare (salience 5000))
(id-root ?id harass)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id harassed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pareSAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  harass.clp  	harass0   "  ?id "  pareSAnI )" crlf))
)

;"harassed","Adj","1.pareSAnI"
;vaha mele kI BIdZa BAdZa meM"harassed" ho gaI.
;
(defrule harass1
(declare (salience 4900))
(id-root ?id harass)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pareSAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harass.clp 	harass1   "  ?id "  pareSAna_kara )" crlf))
)

;"harass","V","1.pareSAna karanA"
;pulisa riSvawa pAne ke liye aparAXI ko"harass" kara rahI WI.
;
;