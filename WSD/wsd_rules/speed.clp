
(defrule speed0
(declare (salience 5000))
(id-root ?id speed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raPwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speed.clp 	speed0   "  ?id "  raPwAra )" crlf))
)

(defrule speed1
(declare (salience 4900))
(id-root ?id speed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZI_se_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speed.clp 	speed1   "  ?id "  wejZI_se_cala )" crlf))
)

;"speed","V","1.wejZI se calanA"
;Speeding fast at corners is very dangerous.
;
;