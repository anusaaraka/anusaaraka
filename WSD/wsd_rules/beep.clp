
(defrule beep0
(declare (salience 5000))
(id-root ?id beep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kI_AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beep.clp 	beep0   "  ?id "  eka_prakAra_kI_AvAjZa )" crlf))
)

;"beep","N","1.eka_prakAra_kI_AvAjZa"
;I heard a beep from the computer.
;
(defrule beep1
(declare (salience 4900))
(id-root ?id beep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beep.clp 	beep1   "  ?id "  AvAjZa_kara )" crlf))
)

;"beep","V","1.AvAjZa_karanA"
;The computer beeps regularly.
;
