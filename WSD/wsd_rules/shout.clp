;Added by human
(defrule shout0
(declare (salience 5000))
(id-root ?id shout)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shouts )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cillAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  shout.clp  	shout0   "  ?id "  cillAhata )" crlf))
)

;"shout","N","1.cillAhata"
;The teacher asked the class not to shout.
;
;
(defrule shout1
(declare (salience 4900))
(id-root ?id shout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shout.clp 	shout1   "  ?id "  cillAhata )" crlf))
)

;"shout","N","1.cillAhata"
;The teacher asked the class not to shout.
;
(defrule shout2
(declare (salience 4800))
(id-root ?id shout)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cillA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shout.clp 	shout2   "  ?id "  cillA )" crlf))
)

;"shout","V","1.cillA"
