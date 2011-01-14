
(defrule offensive0
(declare (salience 5000))
(id-root ?id offensive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAnajanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offensive.clp 	offensive0   "  ?id "  apamAnajanaka )" crlf))
)

(defrule offensive1
(declare (salience 4900))
(id-root ?id offensive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apamAnajanaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offensive.clp 	offensive1   "  ?id "  apamAnajanaka )" crlf))
)

;"offensive","Adj","1.apamAnajanaka"
;Ram found his behaviour most offensive.
;
;