
(defrule wheel0
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel0   "  ?id "  pahiyA )" crlf))
)

;"wheel","N","1.pahiyA"
;The wheel in the cycle is not moving.
;
(defrule wheel1
(declare (salience 4900))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahiyoM_para_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel1   "  ?id "  pahiyoM_para_le_jA )" crlf))
)

;"wheel","VTI","1.pahiyoM_para_le_jAnA"
;He wheeled the goods from place to place.
;
