
(defrule riddle0
(declare (salience 5000))
(id-root ?id riddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahelI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  riddle.clp 	riddle0   "  ?id "  pahelI )" crlf))
)

;"riddle","N","1.pahelI"
;He is always ready to solve the riddles.
;
(defrule riddle1
(declare (salience 4900))
(id-root ?id riddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_se_Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  riddle.clp 	riddle1   "  ?id "  bahuwa_se_Cexa_kara )" crlf))
)

;"riddle","V","1.bahuwa_se_Cexa_karanA"
;The terrorist riddled his body with bullets.
;
