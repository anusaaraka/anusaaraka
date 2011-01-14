
(defrule knot0
(declare (salience 5000))
(id-root ?id knot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAzTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knot.clp 	knot0   "  ?id "  gAzTa )" crlf))
)

;"knot","N","1.gAzTa"
;She is having number of knots in her ribbon.
;His stomach was in knots.
;Their muscles stood out in knots.
;--"2.samuxrI_mIla"
;Ship is moving at the speed of 30 knots per hour.
;--"3.samUha"
;A small knot of women listened to his sermon.
;
(defrule knot1
(declare (salience 4900))
(id-root ?id knot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAzTa_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knot.clp 	knot1   "  ?id "  gAzTa_laga )" crlf))
)

;"knot","V","1.gAzTa_laganA"
;Tie a knot to the string.
;--"2.bAzXanA"
;Knot the strings tightly to one another.
;--"3.ulaJAnA"
;The strange question had him all in knots.
;
