
(defrule nearby0
(declare (salience 5000))
(id-root ?id nearby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nearby.clp 	nearby0   "  ?id "  pAsa_vAlA )" crlf))
)

;"nearby","Adj","1.pAsa_vAlA"
;you will get that in the nearby shop.
;
(defrule nearby1
(declare (salience 4900))
(id-root ?id nearby)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAsa_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nearby.clp 	nearby1   "  ?id "  pAsa_meM )" crlf))
)

;"nearby","Adv","1.pAsa_meM"
;The boy lives nearby.
;
