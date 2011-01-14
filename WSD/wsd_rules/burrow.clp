
(defrule burrow0
(declare (salience 5000))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burrow.clp 	burrow0   "  ?id "  bila )" crlf))
)

;"burrow","N","1.bila"
;Children like to catch rabbits from their burrows.
;
(defrule burrow1
(declare (salience 4900))
(id-root ?id burrow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Koxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  burrow.clp 	burrow1   "  ?id "  Koxa )" crlf))
)

;"burrow","VT","1.KoxanA"
;Burrow through the forest
;
