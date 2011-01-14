;Added by Meena(26.02.10)
;Actress Whoopi Goldberg and singer Michael Jackson attended the ceremony .
(defrule ceremony0
(declare (salience 4900))
(id-root ?id ceremony)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAroha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ceremony.clp      ceremony0   "  ?id "  samAroha )" crlf)
)
)

