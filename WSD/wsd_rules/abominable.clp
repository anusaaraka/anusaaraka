;Added by Meena(3.02.10)
;I hate her abominable behaviour .
(defrule abominable0
(declare (salience 5000))
(id-root ?id abominable)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GinOnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  let.clp       let14   "  ?id "  GinOnA )" crlf))
)

