
(defrule minimum0
(declare (salience 5000))
(id-root ?id minimum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_se_kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minimum.clp 	minimum0   "  ?id "  kama_se_kama )" crlf))
)

;"minimum","Adj","1.kama_se_kama"
;We pay the minimum taxes.
;
(defrule minimum1
(declare (salience 4900))
(id-root ?id minimum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_se_kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minimum.clp 	minimum1   "  ?id "  kama_se_kama )" crlf))
)

;"minimum","N","1.kama_se_kama"
;The minimum you can do is grant her leave.
;
