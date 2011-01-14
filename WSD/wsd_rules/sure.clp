

;Added by Meena(6.3.10)
;I am not sure that the results are biochemically valid . 
(defrule sure0
(declare (salience 4000))
(id-root ?id sure)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sure.clp      sure0   "  ?id "  niSciwa )" crlf)
)
)

