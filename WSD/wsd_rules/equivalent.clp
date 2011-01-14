
(defrule equivalent0
(declare (salience 5000))
(id-root ?id equivalent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalent.clp 	equivalent0   "  ?id "  barAbara )" crlf))
)

(defrule equivalent1
(declare (salience 4900))
(id-root ?id equivalent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equivalent.clp 	equivalent1   "  ?id "  barAbara )" crlf))
)

;"equivalent","Adj","1.barAbara"
;The perpendicular bisector of a line divides it into two equivalent halves.
;
;