
(defrule rowdy0
(declare (salience 5000))
(id-root ?id rowdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZAlU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rowdy.clp 	rowdy0   "  ?id "  JagadZAlU )" crlf))
)

;"rowdy","Adj","1.JagadZAlU"
;A group of rowdy teenagers are misbehaving with a teacher.
;
(defrule rowdy1
(declare (salience 4900))
(id-root ?id rowdy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadZAlU_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rowdy.clp 	rowdy1   "  ?id "  JagadZAlU_vyakwi )" crlf))
)

;"rowdy","N","1.JagadZAlU_vyakwi"
;He is a rowdy.
;
