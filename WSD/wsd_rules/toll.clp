
(defrule toll0
(declare (salience 5000))
(id-root ?id toll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArgakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toll.clp 	toll0   "  ?id "  mArgakara )" crlf))
)

;"toll","N","1.kara[mArgakara]"
;The car was stopped to pay the toll.
;--"2.kRawi"
;The negligence of hygiene took a heavy toll of lives due to cholera. .
;
(defrule toll1
(declare (salience 4900))
(id-root ?id toll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImI_gawi_se_GaNtA_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toll.clp 	toll1   "  ?id "  XImI_gawi_se_GaNtA_bajA )" crlf))
)

;"toll","VTI","1.XImI_gawi_se_GaNtA_bajAnA{viSeRakara_mqwyu_kI_sUcanA_xene_ke_liye}"
;One could hear the church bells toll.
;
