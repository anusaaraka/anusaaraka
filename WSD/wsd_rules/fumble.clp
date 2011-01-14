
(defrule fumble0
(declare (salience 5000))
(id-root ?id fumble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fumbling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aniSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fumble.clp  	fumble0   "  ?id "  aniSciwa )" crlf))
)

;"fumbling","Adj","1.aniSciwa"
;
(defrule fumble1
(declare (salience 4900))
(id-root ?id fumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUhadapana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fumble.clp 	fumble1   "  ?id "  PUhadapana )" crlf))
)

;"fumble","N","1.PUhadapana"
;His fumble was just a pretention.
;
(defrule fumble2
(declare (salience 4800))
(id-root ?id fumble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tatola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fumble.clp 	fumble2   "  ?id "  tatola )" crlf))
)

;"fumble","VI","1.tatolanA{beDaMge_warIke_se}"
;The boy fumbled for the light switch .
;--"2.hAWa_se_iXara_uXara_palatanA"
;The wicket keeper tumbled with the ball && dropped it.
;
