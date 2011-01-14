
(defrule twist0
(declare (salience 5000))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twist.clp 	twist0   "  ?id "  GumAva )" crlf))
)

;"twist","N","1.GumAva"
;He broke the handle with a violent twist.
;
(defrule twist1
(declare (salience 4900))
(id-root ?id twist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  twist.clp 	twist1   "  ?id "  muda )" crlf))
)

;"twist","VT","1.mudanA"
;He twisted his head round to speak to his friend.
;--"2.gUWanA"
;Twist the creeper into the arch.
;--"3.vikqwa_karanA"
;He twisted his face after eating bittergourd.
;--"4.lipatanA"
;The nurse twisted the bandage round her arm.
;--"5.miWyA_arWa_xenA"
;The papers twisted everything.
;
