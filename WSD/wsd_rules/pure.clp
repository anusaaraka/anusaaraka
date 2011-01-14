
(defrule pure0
(declare (salience 5000))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure0   "  ?id "  SuxXa )" crlf))
)

(defrule pure1
(declare (salience 4900))
(id-root ?id pure)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pure.clp 	pure1   "  ?id "  SuxXa )" crlf))
)

;"pure","Adj","1.SuxXa"
;The acqua guard provides with pure water.
;
;
