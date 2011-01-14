
(defrule verbal0
(declare (salience 5000))
(id-root ?id verbal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOKika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  verbal.clp 	verbal0   "  ?id "  mOKika )" crlf))
)

(defrule verbal1
(declare (salience 4900))
(id-root ?id verbal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOKika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  verbal.clp 	verbal1   "  ?id "  mOKika )" crlf))
)

;"verbal","Adj","1.mOKika"
;Verbal communication helps people to communicate well
;
;