
;Added by Meena(17.1.11)
;All relevant Python features are carefully explained and exemplified, and you will quickly come to appreciate Python's suitability for this application area.
(defrule come_to_appreciate
(declare (salience 5000))
(id-root ?id appreciate)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) come)
(id-root =(- ?id 1) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) =(- ?id 2)  praSaMsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " appreciate.clp  come_to_appreciate  "  ?id "  " (- ?id 1) "   " (- ?id 2) "   praSaMsA_kara )" crlf))
)

