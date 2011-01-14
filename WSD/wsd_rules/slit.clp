
(defrule slit0
(declare (salience 5000))
(id-root ?id slit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slit.clp 	slit0   "  ?id "  kAta )" crlf))
)

;"slit","N","1.kAta"
;The dress has a slit on the left side.
;
(defrule slit1
(declare (salience 4900))
(id-root ?id slit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slit.clp 	slit1   "  ?id "  kAta )" crlf))
)

;"slit","V","1.kAtanA"
;The murderer slit his victim's throat.
;
