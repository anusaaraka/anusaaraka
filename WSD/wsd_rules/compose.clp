;Added by Meena(20.02.10)
;There must be another sort of rules according to which sentences are composed .
(defrule compose0
(declare (salience 4900))
(id-root ?id compose)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 sentence|poem|music|story)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  compose.clp       compose0   "  ?id "  banA )" crlf))
)

