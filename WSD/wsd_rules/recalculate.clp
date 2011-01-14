
;Added by Meena(21.10.10)
;However , in this case we have a cycle , so we will contract it into a single node and recalculate edge weights according to Figure 3 . 
(defrule recalculate0
(declare (salience 5000))
(id-root ?id recalculate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punargaNanA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recalculate.clp      recalculate0   "  ?id "  punargaNanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  recalculate.clp      recalculate0   "  ?id " kA )" crlf)
)
)

