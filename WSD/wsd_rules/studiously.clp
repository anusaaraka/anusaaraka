;Added by Meena(27.1.11)
;Their report is studiously vague.
;He studiously avoided answering the question. 
(defrule studiously0
(declare (salience 5000))
(id-root ?id studiously)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRaNa-viSeRaka  ?id1 ?id)(kriyA-kriyA_viSeRaNa ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suniyojiwa_warIke_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_group_root_mng   " ?*wsd_dir* " studiously.clp  studiously0  "  ?id "  " ?id1 "  suniyojiwa_warIke_se )" crlf))
)

