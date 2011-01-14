
(defrule frost0
(declare (salience 5000))
(id-root ?id frost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frost.clp 	frost0   "  ?id "  pAlA )" crlf))
)

;"frost","N","1.pAlA"
;The planes were delayed due to frost.
;
(defrule frost1
(declare (salience 4900))
(id-root ?id frost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAle_se_Daka_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  frost.clp 	frost1   "  ?id "  pAle_se_Daka_jA )" crlf))
)

;"frost","V","1.pAle_se_Daka_jAnA"
;The windows were all frosted up.
;--"2.keka_ko_cInI_ke_burAxe_se_sajAnA"
;You have to frost the cake && refrigerate it.
;
