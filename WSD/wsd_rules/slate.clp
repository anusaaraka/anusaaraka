
(defrule slate0
(declare (salience 5000))
(id-root ?id slate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siletI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slate.clp 	slate0   "  ?id "  siletI )" crlf))
)

;"slate","Adj","1.siletI"
(defrule slate1
(declare (salience 4900))
(id-root ?id slate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZI_AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slate.clp 	slate1   "  ?id "  kadZI_AlocanA_kara )" crlf))
)

;"slate","V","1.kadZI_AlocanA_karanA"
;His article on the current political turmoil was slated by most critics.
;
