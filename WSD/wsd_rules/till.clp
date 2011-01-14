
(defrule till0
(declare (salience 5000))
(id-root ?id till)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  till.clp 	till0   "  ?id "  golaka )" crlf))
)

;"till","N","1.golaka"
;The pawn-broker keeps the money in the till.
;
(defrule till1
(declare (salience 4900))
(id-root ?id till)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kewa_jowa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  till.clp 	till1   "  ?id "  Kewa_jowa )" crlf))
)

;"till","VT","1.Kewa_jowanA"
;The farmer tills the land.
;
(defrule till2
(declare (salience 4800))
(id-root ?id till)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jabawaka_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  till.clp 	till2   "  ?id "  jabawaka_nahIM )" crlf))
)

;I will wait here till you come.
