
(defrule overhead0
(declare (salience 5000))
(id-root ?id overhead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_ke_Upara_se_hone_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overhead.clp 	overhead0   "  ?id "  sira_ke_Upara_se_hone_vAlA )" crlf))
)

;"overhead","Adj","1.sira_ke_Upara_se_hone_vAlA"
;An overhead railway bridge
;
(defrule overhead1
(declare (salience 4900))
(id-root ?id overhead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_ke_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overhead.clp 	overhead1   "  ?id "  sira_ke_Upara )" crlf))
)

;"overhead","Adv","1.sira_ke_Upara"
;Birds fly overhead
;
