
(defrule alike0
(declare (salience 5000))
(id-root ?id alike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alike.clp 	alike0   "  ?id "  samAna )" crlf))
)

;"alike","Adj","1.samAna"
;These two handwritings are almost alike.
;
(defrule alike1
(declare (salience 4900))
(id-root ?id alike)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alike.clp 	alike1   "  ?id "  samAna_rUpa_se )" crlf))
)

;"alike","Adv","1.samAna_rUpa_se"
;They always think alike.
;
