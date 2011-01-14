
(defrule tangle0
(declare (salience 5000))
(id-root ?id tangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tangle.clp 	tangle0   "  ?id "  ulaJana )" crlf))
)

;"tangle","N","1.ulaJana"
;His personal matters are in a tangle.
;They carved their way through the tangle of vines.
;
(defrule tangle1
(declare (salience 4900))
(id-root ?id tangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tangle.clp 	tangle1   "  ?id "  ulaJa_jA )" crlf))
)

;"tangle","VI","1.ulaJa_jAnA"
;The cord was tangled .
;The rope got tangled up with the wire.
;
(defrule tangle2
(declare (salience 4800))
(id-root ?id tangle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ulaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tangle.clp 	tangle2   "  ?id "  ulaJA )" crlf))
)

;"tangle","VT","1.ulaJAnA"
;He tangled the wire in the bushes.
;
