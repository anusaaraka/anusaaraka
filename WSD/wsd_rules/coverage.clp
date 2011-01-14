
;Added by sheetal(17-03-10)
;The coverage on TV and on the radio has been terrible .
(defrule coverage0
(declare (salience 5000))
(id-root ?id coverage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root =(- ?id 1) the)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatanA_viSeRa_kA_byOrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  coverage.clp      coverage0   "  ?id "  GatanA_viSeRa_kA_byOrA )" crlf))
)

