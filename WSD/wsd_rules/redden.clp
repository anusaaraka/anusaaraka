
(defrule redden0
(declare (salience 5000))
(id-root ?id redden)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  redden.clp 	redden0   "  ?id "  lAla_kara )" crlf))
)

(defrule redden1
(declare (salience 4900))
(id-root ?id redden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  redden.clp 	redden1   "  ?id "  lAla_ho )" crlf))
)

;"redden","V","1.lAla_kara[ho]"
(defrule redden2
(declare (salience 4800))
(id-root ?id redden)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAla_karanA_yA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  redden.clp 	redden2   "  ?id "  lAla_karanA_yA_ho )" crlf))
)

;"redden","VTI","1.lAla_karanA_yA_honA"
;She became reddened with shame && anger.
;
