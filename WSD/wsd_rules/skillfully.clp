;Added by sheetal(2-12-09).
(defrule skillfully0
(declare (salience 5000))
(id-root ?id skillfully)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kuSalawApUrvaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  skillfully.clp     skillfully0   "  ?id "  kuSalawApUrvaka )" crlf))
)
;She handled it skillfully and with compassion .

