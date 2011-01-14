
(defrule blink0
(declare (salience 5000))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id timatimAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink0   "  ?id "  timatimAhata )" crlf))
)

;"blink","N","1.timatimAhata/jagamagAhata/Jalaka/Japaka"
(defrule blink1
(declare (salience 4900))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Japaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink1   "  ?id "  Japaka )" crlf))
)

;"blink","V","1.Japaka"
(defrule blink2
(declare (salience 4800))
(id-root ?id blink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzKa_JapakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blink.clp 	blink2   "  ?id "  AzKa_JapakA )" crlf))
)

;"blink","VT","1.AzKa_JapakAnA"
;The TV announcer never seems to blink.
;--"2.timatimAnA"
;One could se the lights blink from a distance.
;
