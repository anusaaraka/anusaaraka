
(defrule foreign0
(declare (salience 5000))
(id-root ?id foreign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foreign.clp 	foreign0   "  ?id "  vixeSI )" crlf))
)

(defrule foreign1
(declare (salience 4900))
(id-root ?id foreign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vixeSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  foreign.clp 	foreign1   "  ?id "  vixeSI )" crlf))
)

;"foreign","Adj","1.vixeSI"
;She learns foreign languages during vacations.
;Foreign tourists should be treated as guests.
;
;