
(defrule low0
(declare (salience 5000))
(id-root ?id low)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tone)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  low.clp 	low0   "  ?id "  maMxa )" crlf))
)

(defrule low1
(declare (salience 4900))
(id-root ?id low)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  low.clp 	low1   "  ?id "  nIcA )" crlf))
)

(defrule low2
(declare (salience 4800))
(id-root ?id low)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  low.clp 	low2   "  ?id "  nIcA )" crlf))
)

(defrule low3
(declare (salience 4700))
(id-root ?id low)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bEla_kI_waraha_dakAranA_yA_bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  low.clp 	low3   "  ?id "  bEla_kI_waraha_dakAranA_yA_bola )" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;It was found that at sufficiently low pressure of about 0.001 mm of mercury column, a discharge took place between the two electrodes on applying the electric field to the gas in the discharge tube.
;The problem is not high tuition but low aid, based on need, in many states.
;Towards the same period at the end of 19th century, experimental investigations on conduction of electricity (electric discharge) through gases at low pressure in a discharge tube led to many historic discoveries.  

(defrule low4
(declare (salience 5100))
(id-root ?id low)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
(or (id-cat_coarse ?id noun|adjective)(id-cat ?id adjective_comparative|adjective_superlative))
(id-cat_coarse ?id1 noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  low.clp 	low4   "  ?id "  kama )" crlf))
)

;"low","VI","1.bEla_kI_waraha_dakAranA_yA_bolanA"
;
;
