

;Added by Meena(26.3.10)
;Prices have tended downwards over recent years . 
(defrule downwards0
(declare (salience 4900))
(id-root ?id downwards )
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  downwards.clp      downwards0   "  ?id "  JukAva_ho )" crlf)
)
)

