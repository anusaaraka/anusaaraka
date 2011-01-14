

;Added by Meena(9.3.10)
;When none worked satisfactorily , his assistant complained , " All our work is in vain ".
(defrule none0
(declare (salience 5000))
(id-root ?id  none)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id1 ?id)(kriyA-object ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI))
(assert (id-attach_emphatic ?id BI))
(assert (id-preceeding_part_of_verb ?id1 nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  none.clp       none0   "  ?id "   koI )" crlf))

)

