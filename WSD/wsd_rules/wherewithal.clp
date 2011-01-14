
(defrule wherewithal0
(declare (salience 5000))
(id-root ?id wherewithal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wherewithal.clp 	wherewithal0   "  ?id "  Xana )" crlf))
)

;"wherewithal","N","1.Xana"
;He wants to buy a car but he does't have the wherewithal.
;
(defrule wherewithal1
(declare (salience 4900))
(id-root ?id wherewithal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wherewithal.clp 	wherewithal1   "  ?id "  Xana )" crlf))
)

;"wherewithal","Pron","1.Xana"
;He wants to buy a car but he does't have the wherewithal.
;
