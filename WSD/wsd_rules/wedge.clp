
(defrule wedge0
(declare (salience 5000))
(id-root ?id wedge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wedge.clp 	wedge0   "  ?id "  KUztA )" crlf))
)

;"wedge","N","1.KUztA"
;He used the wedge to separate the wood into two parts.
;
(defrule wedge1
(declare (salience 4900))
(id-root ?id wedge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUztA_gAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wedge.clp 	wedge1   "  ?id "  KUztA_gAdZa )" crlf))
)

;"wedge","VI","1.KUztA_gAdZanA"
;I gave the carpenter a wedge tool.
;
