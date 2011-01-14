
(defrule veto0
(declare (salience 5000))
(id-root ?id veto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniReXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veto.clp 	veto0   "  ?id "  prawiniReXa )" crlf))
)

;"veto","N","1.prawiniReXa"
;THe U.N put a veto on the resolution
;
(defrule veto1
(declare (salience 4900))
(id-root ?id veto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnUna_kA_masUxA_asvIkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veto.clp 	veto1   "  ?id "  kAnUna_kA_masUxA_asvIkqwa_kara )" crlf))
)

;"veto","VT","1.kAnUna_kA_masUxA_asvIkqwa_karanA"
;India vetoed the proposal of armament of nations.
;
