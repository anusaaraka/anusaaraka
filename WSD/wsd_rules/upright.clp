
(defrule upright0
(declare (salience 5000))
(id-root ?id upright)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upright.clp 	upright0   "  ?id "  sahI )" crlf))
)

(defrule upright1
(declare (salience 4900))
(id-root ?id upright)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  upright.clp 	upright1   "  ?id "  sIXA )" crlf))
)

;"upright","Adj","1.sIXA/KadZA"
;It's  an upright post.
;--"2.XArmika/KarA"
;He is an upright businessman.
;
;