
(defrule grime0
(declare (salience 5000))
(id-root ?id grime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mEla-ganxagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grime.clp 	grime0   "  ?id "  mEla-ganxagI )" crlf))
)

;"grime","N","1.mEla-ganxagI"
;His hands were covered with grimes && sweat.
;
(defrule grime1
(declare (salience 4900))
(id-root ?id grime)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mElA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grime.clp 	grime1   "  ?id "  mElA_kara )" crlf))
)

;"grime","VT","1.mElA_karanA"
;The children grimed their hands with mud.
;
