;Added by Meena(28.4.11)
;His velvety brown eyes had been his passport to fame.
(defrule velvety1
(declare (salience 4000))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id velvety)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maKamalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  velvety.clp       velvety1   "  ?id "  maKamalI )" crlf))
)
