
(defrule premier0
(declare (salience 5000))
(id-root ?id premier)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praXAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premier.clp 	premier0   "  ?id "  praXAna )" crlf))
)

;"premier","Adj","1.praXAna"
;Tata is the premier producer of steel in India.
;
(defrule premier1
(declare (salience 4900))
(id-root ?id premier)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praXAna_maMwrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  premier.clp 	premier1   "  ?id "  praXAna_maMwrI )" crlf))
)

;"premier","N","1.praXAna_maMwrI"
;The first woman premier is Sirimao Bandarunayake.
;
