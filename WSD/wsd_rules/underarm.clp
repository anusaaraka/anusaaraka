
(defrule underarm0
(declare (salience 5000))
(id-root ?id underarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhu_ke_nIce))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underarm.clp 	underarm0   "  ?id "  bAhu_ke_nIce )" crlf))
)

;"underarm","Adj","1.bAhu_ke_nIce"
;I bought a costly underarm deodarant.
;
(defrule underarm1
(declare (salience 4900))
(id-root ?id underarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id andara_Arma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underarm.clp 	underarm1   "  ?id "  andara_Arma )" crlf))
)

;"underarm","Adv","1.andara_Arma{kriketa}"
;Australians bowl underarm in one-day cricket matches.
;
