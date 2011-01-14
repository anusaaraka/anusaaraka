
(defrule eight0
(declare (salience 5000))
(id-root ?id eight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ATa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eight.clp 	eight0   "  ?id "  ATa )" crlf))
)

;"eight","Det","1.ATa"
;I need eight chairs for that room.
;
(defrule eight1
(declare (salience 4900))
(id-root ?id eight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ATa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eight.clp 	eight1   "  ?id "  ATa )" crlf))
)

;"eight","N","1.ATa"
;The number eight is lucky for him.
;
