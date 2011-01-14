;Added by Meena(21.10.09)
;His reluctance to answer her questions simply fanned her curiosity .
(defrule simply0
(declare (salience 3900))
(id-root ?id simply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-root ?id1 fan)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  simply.clp      simply0    "  ?id "  Ora_BI )" crlf)
)
)

