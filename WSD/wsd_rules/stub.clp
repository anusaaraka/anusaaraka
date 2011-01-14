
(defrule stub0
(declare (salience 5000))
(id-root ?id stub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stub.clp 	stub0   "  ?id "  tukadZA )" crlf))
)

;"stub","N","1.tukadZA"
; My pencil had been worn down to a stub.
;--"2.musannA"
; Fill in a cheque stub.
;
(defrule stub1
(declare (salience 4900))
(id-root ?id stub)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_Tokara_KAnA_yA_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stub.clp 	stub1   "  ?id "  se_Tokara_KAnA_yA_laga )" crlf))
)

;"stub","V","1.se_Tokara_KAnA_yA_laganA"
; I have stubbed my toe on a rock.
;--"2.buJA_xenA"
; He stubbed the cigarette with his shoe.
;
