;Added by Meena(22.4.10)
;The cat sat on the mat and scratched itself , loudly .
(defrule loudly0
(declare (salience 1700))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id loudly )
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  loudly.clp   loudly0   "  ?id "   jZora_se )" crlf))
)

