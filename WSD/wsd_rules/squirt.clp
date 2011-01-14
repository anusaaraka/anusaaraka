
(defrule squirt0
(declare (salience 5000))
(id-root ?id squirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBimAnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squirt.clp 	squirt0   "  ?id "  aBimAnI )" crlf))
)

;"squirt","N","1.aBimAnI"
;I hate that man, he is such a squirt.
;--"1.PuhArA/XAra"
;He only gave us a tiny squirt of jam with the bread.
;--"2.aBimAnI"
;I hate that man, he is such a squirt.
;
(defrule squirt1
(declare (salience 4900))
(id-root ?id squirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PuhArA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squirt.clp 	squirt1   "  ?id "  PuhArA_mAra )" crlf))
)

;"squirt","V","1.PuhArA_mAranA"
;Please squirt the powder on my back.
;
