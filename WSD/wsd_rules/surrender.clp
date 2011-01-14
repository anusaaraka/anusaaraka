
(defrule surrender0
(declare (salience 5000))
(id-root ?id surrender)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmasamarpaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surrender.clp 	surrender0   "  ?id "  AwmasamarpaNa )" crlf))
)

;"surrender","N","1.AwmasamarpaNa"
;He signed a treaty of surrender.
;
(defrule surrender1
(declare (salience 4900))
(id-root ?id surrender)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmasamarpaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surrender.clp 	surrender1   "  ?id "  AwmasamarpaNa_kara )" crlf))
)

;"surrender","V","1.AwmasamarpaNa_karanA"
;We shall never surrender.
;
