
(defrule berth0
(declare (salience 5000))
(id-root ?id berth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  berth.clp 	berth0   "  ?id "  barWa )" crlf))
)

;"berth","N","1.barWa/SAyikA"
;I got a berth on the middle deck.
;
(defrule berth1
(declare (salience 4900))
(id-root ?id berth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  berth.clp 	berth1   "  ?id "  jagaha_xe )" crlf))
)

;"berth","VT","1.jagaha_xenA"
;I was berthed on the middle deck.
;
