
(defrule understand0
(declare (salience 5000))
(id-root ?id understand)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id understanding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  understand.clp  	understand0   "  ?id "  samaJa )" crlf))
)

;"understanding","N","1.samaJa"
;He has virtually no understanding of social cause && effect.
;
(defrule understand1
(declare (salience 4900))
(id-root ?id understand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  understand.clp 	understand1   "  ?id "  samaJa )" crlf))
)

;"understand","VTI","1.samaJanA"
;I can't understand the complicated mathematical equations.
;
;