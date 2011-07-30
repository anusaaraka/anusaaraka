;Modified by Meena(26.7.11)
;Hooker's philosophy was to build and sell.
(defrule sell0
(declare (salience 1000))
(id-root ?id sell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sell.clp     sell0   "  ?id "  beca )" crlf))
)

