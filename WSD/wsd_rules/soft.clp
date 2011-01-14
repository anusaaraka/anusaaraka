
(defrule soft0
(declare (salience 5000))
(id-root ?id soft)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id komala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soft.clp 	soft0   "  ?id "  komala )" crlf))
)

(defrule soft1
(declare (salience 4900))
(id-root ?id soft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mqxu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soft.clp 	soft1   "  ?id "  mqxu )" crlf))
)

(defrule soft2
(declare (salience 4800))
(id-root ?id soft)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id narama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soft.clp 	soft2   "  ?id "  narama )" crlf))
)

;"soft","Adj","1.narama"
;Small children like to play with soft things.
;--"2.sAxA"
;People, who have dark complexion should wear soft colours.
;--"3.maXura"
;Old melodies are soft to listen.
;--"4.kamajZora"
;One should not be of a soft character.
;
;
