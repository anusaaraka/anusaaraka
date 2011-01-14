
(defrule bet0
(declare (salience 5000))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp 	bet0   "  ?id "  Sarwa )" crlf))
)

;"bet","N","1.Sarwa"
;We made a bet of Rs 100.




;Added by Meena(13.5.10)
;Alan bet me five dollars Clinton would lose the election .
(defrule bet1
(declare (salience 4900))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_1 ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa_lagA))
(assert (kriyA_id-object1_viBakwi ?id se))
(assert (kriyA_id-object2_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp       bet1   "  ?id "  Sarwa_lagA )" crlf))
)





;Added by Meena(13.5.10)
;
(defrule bet2
(declare (salience 4900))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sarwa_lagA))
;(assert (kriyA_id-object1_viBakwi ?id se))
(assert (kriyA_id-object2_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp       bet2   "  ?id "  Sarwa_lagA )" crlf))
)




;Salience reduced by Meena(13.5.10)
(defrule bet3
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id bet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAzva_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bet.clp 	bet3   "  ?id "  xAzva_lagA )" crlf))
)

;"bet","VT","1.xAzva_lagAnA"
;I bet it will rain tommorrow.
;
