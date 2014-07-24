
(defrule devil0
(declare (salience 4000))
(id-root ?id devil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SEwAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devil.clp 	devil0   "  ?id "  SEwAna )" crlf))
)

;"devil","N","1.SEwAna"
;Satan was a devil.
;
(defrule devil1
(declare (salience 4900))
(id-root ?id devil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id masAle_evaM_warala_paxArWoM_se_KAnA_pakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devil.clp 	devil1   "  ?id "  masAle_evaM_warala_paxArWoM_se_KAnA_pakA )" crlf))
)

;"devil","V","1.masAle_evaM_warala_paxArWoM_se_KAnA_pakAnA"
;They devilled the chicken.
;

;@@@ Added by Pramila(Banasthali University) on 07-01-2014
;He is a bit of a devil.
;वह बड़ा चतुर-चालाक है.
(defrule devil2
(declare (salience 5000))
(id-root ?id devil)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cawura-cAlAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  devil.clp 	devil2   "  ?id "  cawura-cAlAka )" crlf))
)
