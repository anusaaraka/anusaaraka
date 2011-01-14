;Added by Meena(2.03.10)
;Clinton announced on Tuesday a bold new proposal . 
(defrule announce0
(declare (salience 5000))
(id-root ?id announce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GoRaNA_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "    announce.clp      announce0   "  ?id "  GoRaNA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   announce.clp       announce0   "  ?id " kA )" crlf)
)
)


