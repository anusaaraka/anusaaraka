
;Added by Meena(1.4.11)
;The frightened children bunched together in the corner of the classroom. 
(defrule corner1
(declare (salience 4900))
(id-root ?id corner)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id  noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id konA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corner.clp        corner1   "  ?id "  konA )" crlf))
)

