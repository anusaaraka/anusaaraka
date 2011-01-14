
(defrule weigh0
(declare (salience 5000))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vajana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh0   "  ?id "  vajana )" crlf))
)

(defrule weigh1
(declare (salience 4900))
(id-root ?id weigh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weigh.clp 	weigh1   "  ?id "  wola )" crlf))
)

;"weigh","VI","1.wolanA"
;He weighs the grains on the scales.
;One must weigh the benefits && the risks of the project. .
;--"2.vajana_honA"
;How much do you weigh?.
;--"4.laMgara_uTAnA"
;We weighed anchor.
;
;