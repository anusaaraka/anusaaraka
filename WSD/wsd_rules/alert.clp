;Added by Meena(23.10.09)
;The stanstill alert ended.
(defrule alert0
(declare (salience 5000))
(id-root ?id alert)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cewAvanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alert.clp      alert0   "  ?id "  cewAvanI )" crlf))
)

