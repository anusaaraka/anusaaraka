
(defrule outdoor0
(declare (salience 5000))
(id-root ?id outdoor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAharI-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoor.clp 	outdoor0   "  ?id "  bAharI- )" crlf))
)

(defrule outdoor1
(declare (salience 4900))
(id-root ?id outdoor)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KulI_havA_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outdoor.clp 	outdoor1   "  ?id "  KulI_havA_meM )" crlf))
)

;"outdoor","Adj","1.KulI havA meM"
;Tennis is an outdoor game.
;
;
