
(defrule mighty0
(declare (salience 5000))
(id-root ?id mighty)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id balaSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mighty.clp 	mighty0   "  ?id "  balaSAlI )" crlf))
)

;"mighty","Adj","1.balaSAlI"
;He was a mighty king.
;He had a mighty personality which terrified all.
;
(defrule mighty1
(declare (salience 4900))
(id-root ?id mighty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mighty.clp 	mighty1   "  ?id "  bahuwa )" crlf))
)

;"mighty","Adv","1.bahuwa"
;She is mighty pleased with his achievements.
;
