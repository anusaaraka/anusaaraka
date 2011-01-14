
(defrule hazard0
(declare (salience 5000))
(id-root ?id hazard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hazard.clp 	hazard0   "  ?id "  KawarA )" crlf))
)

;"hazard","N","1.KawarA"
;Earthquake is a natural hazard.
;BUkampa eka prAkqwika KZawarA hE.
;
(defrule hazard1
(declare (salience 4900))
(id-root ?id hazard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hazard.clp 	hazard1   "  ?id "  KawarA_ho )" crlf))
)

;"hazard","V","1.KawarA_[honA/uTAnA]"
