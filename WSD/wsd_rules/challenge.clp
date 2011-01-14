
(defrule challenge0
(declare (salience 5000))
(id-root ?id challenge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cunOwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  challenge.clp 	challenge0   "  ?id "  cunOwI )" crlf))
)

;"challenge","N","1.cunOwI/xAvA"
;His challenge that he would win the duel was not taken seriouly by anyone.
;




;Added by Meena(1.4.10)
;I challenge anyone here to race with me .
(defrule challenge1
(declare (salience 4900))
(id-root ?id challenge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cunOwI_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  challenge.clp         challenge1   "  ?id "  cunOwI_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  challenge.clp      challenge1    "  ?id " ko )" crlf)
)
)




;Salience reduced by Meena(1.4.10)
(defrule challenge2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id challenge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cunOwI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  challenge.clp 	challenge2   "  ?id "  cunOwI_xe )" crlf))
)

;"challenge","VT","1.cunOwI_xenA"
;She challenged his claims in the court.
;
