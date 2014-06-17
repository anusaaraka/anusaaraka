;added by garima singh- Banasthali Vidyapith(19.8.13)
(defrule contradiction0
(declare (salience 3600))
(id-root ?id contradiction)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) to)
(id-word =(- ?id 1) in)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viparIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  contradiction.clp 	contradiction0   "  ?id "  viparIwa )" crlf))
)
