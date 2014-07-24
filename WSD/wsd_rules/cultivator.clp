;@@@ Added by Preeti(10-4-14)
;Cultivator of the spirited field, he found abundant faith in a believing people. [yourdictionary.com]
;sakriya kRewra kA kisAna, use logoM para viSvAsa karane meM apAra SraXxA milI.
(defrule cultivator0
(id-root ?id cultivator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivator.clp 	cultivator0   "  ?id "  kisAna )" crlf))
)


;@@@ Added by Preeti(10-4-14)
;The fertilizer should be well mixed into the soil, for example, with a rotary cultivator. [yourdictionary.com]
;KAxa ko acCI waraha mittI meM milAnA  cAhie uxAharaNa_ke liye, eka rotarI jamIna_jowane_ke yanwra ke sAWa .
(defrule cultivator1
(declare (salience 100))
(id-root ?id cultivator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 rotary|Rolling|stubble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamIna_jowane_kA_yanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cultivator.clp 	cultivator1   "  ?id "  jamIna_jowane_kA_yanwra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_cultivator1
(declare (salience 100))
(id-root ?id cultivator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 rotary|Rolling|stubble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamIna_jowane_kA_yanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " cultivator.clp   sub_samA_cultivator1   "   ?id " jamIna_jowane_kA_yanwra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_cultivator1
(declare (salience 100))
(id-root ?id cultivator)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 rotary|Rolling|stubble)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamIna_jowane_kA_yanwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " cultivator.clp   obj_samA_cultivator1   "   ?id " jamIna_jowane_kA_yanwra )" crlf))
)
