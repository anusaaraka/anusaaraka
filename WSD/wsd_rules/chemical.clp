
(defrule chemical0
(declare (salience 5000))
(id-root ?id chemical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasAyanika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chemical.clp 	chemical0   "  ?id "  rasAyanika )" crlf))
)

;"chemical","Adj","1.rasAyanika"
;The use of chemical weapons must be banned.
;
(defrule chemical1
(declare (salience 4900))
(id-root ?id chemical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rasAyanika_xravya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chemical.clp 	chemical1   "  ?id "  rasAyanika_xravya )" crlf))
)

;"chemical","N","1.rasAyanika_xravya"
;Nowadays chemicals are mixed in edible items also.
;
