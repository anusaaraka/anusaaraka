
(defrule clatter0
(declare (salience 5000))
(id-root ?id clatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZaKadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clatter.clp 	clatter0   "  ?id "  KadZaKadZAhata )" crlf))
)

;"clatter","N","1.KadZaKadZAhata"
;I could hear the clatter of typewriters in the next room.
;
(defrule clatter1
(declare (salience 4900))
(id-root ?id clatter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KadZaKadZa_kI_AvAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clatter.clp 	clatter1   "  ?id "  KadZaKadZa_kI_AvAjZa_kara )" crlf))
)

;"clatter","V","1.KadZaKadZa_kI_AvAjZa_karanA"
;I could hear the typewriters clattering in the next room.
;
