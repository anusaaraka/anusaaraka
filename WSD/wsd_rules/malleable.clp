
;Added by Meena(19.4.10)
;Lead and tin are malleable metals.
(defrule malleable0
(declare (salience 6500))
(id-root ?id malleable)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 ?metal)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AGAwa_varXanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name_id-wsd_root_mng   " ?*wsd_dir* " malleable.clp   malleable0  "  ?id "    AGAwa_varXanIya  )" crlf))
)





;Added by Meena(17.5.10)
;He had an actor's typically malleable features.
;Europe saw its colonies as a source of raw material and a malleable workforce.
(defrule malleable1
(declare (salience 6600))
(id-root ?id malleable)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 ?noun)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 idea|feature|workforce)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsAnI_se_praBAviwa_hone_vAlA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name_id-wsd_root_mng   " ?*wsd_dir* " malleable.clp   malleable1  "  ?id "   AsAnI_se_ praBAviwa_hone_yA_baxalane_vAlA  )" crlf))
)

 
