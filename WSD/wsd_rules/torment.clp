
(defrule torment0
(declare (salience 5000))
(id-root ?id torment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIdZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torment.clp 	torment0   "  ?id "  pIdZA )" crlf))
)

;"torment","N","1.pIdZA"
;It was a torment for the jews in the hands of Nazis.
;--"2.kaMtaka"
;His illeteracy was a constant torment to him.
;
(defrule torment1
(declare (salience 4900))
(id-root ?id torment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  torment.clp 	torment1   "  ?id "  sawA )" crlf))
)

;"torment","V","1.sawAnA"
;The police tormented the man to reveal the truth.
;
