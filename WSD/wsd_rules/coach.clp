
(defrule coach0
(declare (salience 5000))
(id-root ?id coach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSikRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coach.clp 	coach0   "  ?id "  praSikRaka )" crlf))
)

(defrule coach1
(declare (salience 4900))
(id-root ?id coach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikRA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coach.clp 	coach1   "  ?id "  SikRA_xe )" crlf))
)

;"coach","V","1.SikRA_xenA"
;Ramakanth Achrekar coached Sachin Tendulkar.
;
;