
;Added by Venna Bagga (01-01-2010)
(defrule awful0
(declare (salience 6000))
(id-root ?id awful)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  awful.clp     awful0	" ?id "	burA )" crlf))
) 
;The food was awful .
;AhAra burA WA
