
(defrule radical0
(declare (salience 5000))
(id-root ?id radical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla_viRayaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radical.clp 	radical0   "  ?id "  mUla_viRayaka )" crlf))
)

;"radical","Adj","1.mUla_[BUwa]_viRayaka"
;--"2.mOlika"
;We need a thorough radical changes in our society.
;--"3.suXAravAxI"
;Our government should bring a radical change in the foreign policy. 
;--"4.awivAxI"
;He is a person with radical opinions.
;
(defrule radical1
(declare (salience 4900))
(id-root ?id radical)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radical.clp 	radical1   "  ?id "  mUla )" crlf))
)

;"radical","N","1.mUla"
