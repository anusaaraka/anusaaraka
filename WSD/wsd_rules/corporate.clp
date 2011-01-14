
(defrule corporate0
(declare (salience 5000))
(id-root ?id corporate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigamiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corporate.clp 	corporate0   "  ?id "  nigamiwa )" crlf))
)

(defrule corporate1
(declare (salience 4900))
(id-root ?id corporate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigama_se_sambanXiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corporate.clp 	corporate1   "  ?id "  nigama_se_sambanXiwa )" crlf))
)

;"corporate","Adj","1.nigama_se_sambanXiwa"
;Tommorrow is the day for corporate election.
;
;
