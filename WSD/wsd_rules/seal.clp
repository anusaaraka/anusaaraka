
(defrule seal0
(declare (salience 5000))
(id-root ?id seal)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sealing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sIla_kA_SikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  seal.clp  	seal0   "  ?id "  sIla_kA_SikArI )" crlf))
)

;"sealing","N","1.sIla kA SikArI"
;Sealing is prohibited.
;
(defrule seal1
(declare (salience 4900))
(id-root ?id seal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mohara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seal.clp 	seal1   "  ?id "  mohara )" crlf))
)

;"seal","N","1.mohara[sIla_maCalI]"
;--"2.sIla_maCalI"
;Seals are found in coastal areas.
;--"3.mohara/muxrA"
;Every official paper has the seal of central government on it.
;--"4.vaha_vaswu_jisake_xvArA_muhara_lagAI_jAwI_hE"
;I know a person who makes excellent seals.
;--"5.jodZane_ke_lie_prayukwa_hone_vAlA_paxArWa"
;I bought a seal to fill gap in the water pipe.
;--"6.surakRA_ke_lie_prayukwa_hone_vAlA_paxArWa"
;Ballot boxes were closed with a seal.
;
(defrule seal2
(declare (salience 4800))
(id-root ?id seal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  seal.clp 	seal2   "  ?id "  banxa_kara )" crlf))
)

;"seal","V","1.banxa_karanA"
;I sealed an envelope.
;--"2.mohara_lagAnA"
;Official documents are sealed by government.
;--"3.roka_lagAnA"
;Indian government sealed borders of Rajasthan for protection.
;
