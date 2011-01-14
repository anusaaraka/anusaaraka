(defrule poured0
(id-word ?id poured)
(id-cat_coarse ?id verb)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id dAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poured.clp    poured0   "  ?id "  dAlA )" crlf))
)

