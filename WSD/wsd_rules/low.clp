
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

;"low","VI","1.bEla_kI_waraha_dakAranA_yA_bolanA"
;
;
