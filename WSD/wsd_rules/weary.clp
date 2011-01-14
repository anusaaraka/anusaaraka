
(defrule weary0
(declare (salience 5000))
(id-root ?id weary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id klAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weary.clp 	weary0   "  ?id "  klAnwa )" crlf))
)

;"weary","Adj","1.klAnwa"
;He looked weary after the day's hard work.
;People are weary of change of governments.
;--"2.ubAU"
;It was a weary journey by train for two days.
;
(defrule weary1
(declare (salience 4900))
(id-root ?id weary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weary.clp 	weary1   "  ?id "  WakA )" crlf))
)

;"weary","V","1.WakAnA"
;The boy was wearied of pedalling the cycle.
;
