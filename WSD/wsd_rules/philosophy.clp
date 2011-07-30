;Modified by Meena(26.7.11)
;Hooker's philosophy was to build and sell.
(defrule philosophy0
(declare (salience 5000))
(id-root ?id philosophy)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sixXAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  philosophy.clp     philosophy0   "  ?id "  sixXAnwa )" crlf))
)

