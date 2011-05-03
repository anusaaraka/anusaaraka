;Added by Meena(28.4.11)
;He wore a long black velvet affair. 
;He sat under a wonderful velvet sky.
(defrule velvet0
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id velvet)
(or(viSeRya-viSeRaNa  ?id1 ?id)(samAsa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maKamalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  velvet.clp       velvet0   "  ?id "  maKamalI )" crlf))
)
