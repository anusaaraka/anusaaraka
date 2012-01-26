
(defrule john0
(declare (salience 5000))
(id-root ?id john)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joYna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  john.clp 	john0   "  ?id "  joYna )" crlf))
)

(defrule john1
(declare (salience 4900))
(id-root ?id john)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SOcAlaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  john.clp 	john1   "  ?id "  SOcAlaya )" crlf))
)

;"john","N","1.SOcAlaya"
;David is in the john.
;
