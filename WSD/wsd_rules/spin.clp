
(defrule spin0
(declare (salience 5000))
(id-root ?id spin)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spinning )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kawAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  spin.clp  	spin0   "  ?id "  kawAI )" crlf))
)

;"spinning","N","1.kawAI"
;Spinning is one of my hobbies.
;
(defrule spin1
(declare (salience 4900))
(id-root ?id spin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spin.clp 	spin1   "  ?id "  GumAva )" crlf))
)

;"spin","N","1.GumAva"
;Shane warne gives tremendous spin to the ball.
;--"1.cakraNI_pawana"
;The fighter plane crashed with a spin after being attacked by missiles.
;
(defrule spin2
(declare (salience 4800))
(id-root ?id spin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spin.clp 	spin2   "  ?id "  GumA )" crlf))
)

;"spin","V","1.GumAnA"
;Spin the ball
;--"2.sUwa_kAwanA"
;Spin thread from cotton.
;
