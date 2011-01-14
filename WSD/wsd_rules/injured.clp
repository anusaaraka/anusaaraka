
;Added by Meena(27.3.10)
;The doctor is tending the injured.
(defrule the_injured
(declare (salience 4900))
?mng <-(meaning_to_be_decided ?id)
(id-word ?id injured)
(id-root =(- ?id 1) the)
(not(id-cat_coarse =(+ ?id 1) noun))
(viSeRya-det_viSeRaNa ?id =(- ?id 1))
=>
(retract ?mng)
(assert (id-wsd_number ?id p))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) GAyala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " injured.clp   the_injured  "  ?id "  " (- ?id 1) "  GAyala  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_number   " ?*wsd_dir* "   injured.clp       the_injured   "  ?id "  p )" crlf))
)


