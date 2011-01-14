;Added by sheetal(11-03-10)
;Grace may not be possible to fix the problem .
(defrule possible0
(declare (salience 5000))
(id-root ?id possible|able)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id possible|able)
(id-root =(+ ?id 2) fix)
(id-word ?id1 may)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAyaxa_samBava))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  possible.clp      possible0   "  ?id "  SAyaxa_samBava )" crlf))
)
