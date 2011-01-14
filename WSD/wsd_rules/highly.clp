;Added by sheetal(3-01-10).
(defrule highly0
(declare (salience 5000))
(id-root ?id highly)
?mng <-(meaning_to_be_decided ?id)
(viSeRaNa-viSeRaka  ?viSe ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyanwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  highly.clp      highly0   "  ?id "  awyanwa )" crlf))
)
;Political interference in defence matters is highly undesirable . 
