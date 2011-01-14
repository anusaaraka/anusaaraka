;Added by sheetal(10/6/10)
;He never really recovered from the shock of his wife's death .
(defrule recover0
(declare (salience 5000))
(id-root ?id recover)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 shock)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uBara_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recover.clp       recover0   "  ?id "  uBara_pA )" crlf))
)


