


;Added by Meena(2.5.11)
;They accused the US of interfering in the internal affairs of other nations.
(defrule interfere1
(declare (salience 0))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id interfere)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaKala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  interfere.clp       interfere1   "  ?id "  xaKala_xe )" crlf))
)

