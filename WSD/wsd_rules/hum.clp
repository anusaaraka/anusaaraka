
(defrule hum0
(declare (salience 5000))
(id-root ?id hum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guMjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hum.clp 	hum0   "  ?id "  guMjana )" crlf))
)

;"hum","N","1.guMjana"
;BOroM kA'hum' kAno meM gUzja rahA hE.
;
(defrule hum1
(declare (salience 4900))
(id-root ?id hum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gunagunA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hum.clp 	hum1   "  ?id "  gunagunA )" crlf))
)

;"hum","V","1.gunagunAnA"
;rAhula gIwa ko'hum' rahA WA.
;
