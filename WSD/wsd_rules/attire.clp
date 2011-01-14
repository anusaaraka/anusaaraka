
(defrule attire0
(declare (salience 5000))
(id-root ?id attire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahanAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attire.clp 	attire0   "  ?id "  pahanAvA )" crlf))
)

;"attire","N","1.pahanAvA"
;She was clad in a formal attire.
;
(defrule attire1
(declare (salience 4900))
(id-root ?id attire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswra_pahana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  attire.clp 	attire1   "  ?id "  vaswra_pahana )" crlf))
)

;"attire","VT","1.vaswra_pahananA"
;She attired herself in a formal suit for the occasion.
;
