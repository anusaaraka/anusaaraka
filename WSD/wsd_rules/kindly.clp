
(defrule kindly0
(declare (salience 5000))
(id-root ?id kindly)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpAlu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kindly.clp 	kindly0   "  ?id "  kqpAlu )" crlf))
)

;"kindly","Adj","1.kqpAlu"
(defrule kindly1
(declare (salience 4900))
(id-root ?id kindly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpApUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kindly.clp 	kindly1   "  ?id "  kqpApUrvaka )" crlf))
)

;"kindly","Adv","1.kqpApUrvaka"
;--"2.kqpayA"
;Kindly grant me leave for two days.
;
