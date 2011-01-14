;Added by Meena(8.9.10)
;Because of the recession the company is to axe 350 jobs .
(defrule recession0
;(declare (salience 5000))
(id-root ?id recession)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArWika_maMxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recession.clp      recession0   "  ?id "  ArWika_maMxI )" crlf))
)



(defrule recession1
(declare (salience 4900))
(id-root ?id recession)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id recession)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert  (id-wsd_root_mng ?id GatAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    " ?*wsd_dir* " recession  .clp       recession1  "  ?id "   GatAva  )" crlf)))
;The gradual recession of flood waters brought relief to the people.
