
(defrule freight0
(declare (salience 5000))
(id-root ?id freight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jahAja_yA_relagAdZI_para_laxA_huA_mAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freight.clp 	freight0   "  ?id "  jahAja_yA_relagAdZI_para_laxA_huA_mAla )" crlf))
)

;"freight","N","1.jahAja_yA_relagAdZI_para_laxA_huA_mAla"
;Indian railways have services for both passengers && freight.
;
(defrule freight1
(declare (salience 4900))
(id-root ?id freight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAla_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  freight.clp 	freight1   "  ?id "  mAla_le_jA )" crlf))
)

;"freight","V","1.mAla_le_jAnA"
;The authorities will freight the order to you.
;
