
(defrule tinsel0
(declare (salience 5000))
(id-root ?id tinsel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pannI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinsel.clp 	tinsel0   "  ?id "  pannI )" crlf))
)

;"tinsel","N","1.pannI"
;Decorate your room with tinsel.
;
(defrule tinsel1
(declare (salience 4900))
(id-root ?id tinsel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BadZakIlA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tinsel.clp 	tinsel1   "  ?id "  BadZakIlA_banA )" crlf))
)

;"tinsel","V","1.BadZakIlA_banAnA"
;His tinseled image of Hollywood.
;
