
(defrule blush0
(declare (salience 5000))
(id-root ?id blush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id blushing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id lajjAraMjiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  blush.clp  	blush0   "  ?id "  lajjAraMjiwa )" crlf))
)

;"blushing","Adj","1.lajjAraMjiwa"
;Girls are generally blushing in nature.
;
(defrule blush1
(declare (salience 4900))
(id-root ?id blush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blush.clp 	blush1   "  ?id "  lAlimA )" crlf))
)

;"blush","N","1.lAlimA"
(defrule blush2
(declare (salience 4800))
(id-root ?id blush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SaramA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blush.clp 	blush2   "  ?id "  SaramA )" crlf))
)

;"blush","V","1.SaramAnA"
;She blushed when he flattered her.
;
