
(defrule bomb0
(declare (salience 5000))
(id-root ?id bomb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id bombing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bamabArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  bomb.clp  	bomb0   "  ?id "  bamabArI )" crlf))
)

;"bombing","N","1.bamabArI"
;The bonbings continued till late night in the border area.
;
(defrule bomb1
(declare (salience 4900))
(id-root ?id bomb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bomb.clp 	bomb1   "  ?id "  bama )" crlf))
)

;"bomb","N","1.bama"
;The man had a crude bomb on him.
;
(defrule bomb2
(declare (salience 4800))
(id-root ?id bomb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bama_girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bomb.clp 	bomb2   "  ?id "  bama_girA )" crlf))
)

;"bomb","VT","1.bama_girAnA"
;The Americans bombed Dresden
;
