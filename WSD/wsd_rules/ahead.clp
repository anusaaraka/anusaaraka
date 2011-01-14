
(defrule ahead0
(declare (salience 5000))
(id-root ?id ahead)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ahead.clp 	ahead0   "  ?id "  se_Age )" crlf))
)

(defrule ahead1
(declare (salience 4900))
(id-root ?id ahead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ahead.clp 	ahead1   "  ?id "  Age )" crlf))
)

;"ahead","Adv","1.Age"
;Go ahead.
;
;
