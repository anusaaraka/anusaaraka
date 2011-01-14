
(defrule handsome0
(declare (salience 5000))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunxara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome0   "  ?id "  sunxara )" crlf))
)

;"handsome","Adj","1.sunxara{puruRa}"
;Bharat is a handsome boy .
;Barawa eka sunxara ladZakA hE.
;
(defrule handsome1
(declare (salience 4900))
(id-root ?id handsome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sunxara))
(assert (id-H_vib_mng ?id puruRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  handsome.clp 	handsome1   "  ?id "  sunxara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng   " ?*wsd_dir* "  handsome.clp  handsome1   "  ?id " puruRa )" crlf))
)

;"handsome","N","1.sunxara{puruRa}"
