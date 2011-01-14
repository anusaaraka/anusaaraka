
(defrule imprint0
(declare (salience 5000))
(id-root ?id imprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imprint.clp 	imprint0   "  ?id "  CApa )" crlf))
)

;"imprint","N","1.CApa"
;The tragedy left a lasting imprint on the community.
;
(defrule imprint1
(declare (salience 4900))
(id-root ?id imprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana_meM_bETA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imprint.clp 	imprint1   "  ?id "  mana_meM_bETA_xe )" crlf))
)

;"imprint","V","1.mana_meM_bETA_xenA"
;The terrible scenes were indelibly imprinted on his memory.
;
