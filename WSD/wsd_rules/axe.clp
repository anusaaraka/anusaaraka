
(defrule axe0
(declare (salience 5000))
(id-root ?id axe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulhAdZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  axe.clp 	axe0   "  ?id "  kulhAdZI )" crlf))
)

;"axe","N","1.kulhAdZI"
;Ram had an axe.
;rAma ke pAsa eka kulhAdZI WI.
;
(defrule axe1
(declare (salience 4900))
(id-root ?id axe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  axe.clp 	axe1   "  ?id "  kAta )" crlf))
)

;"axe","VT","1.kAtanA[kama_karanA]"
;The government grant to the University has been axed this year.
;
