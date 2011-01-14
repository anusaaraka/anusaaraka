
(defrule confess0
(declare (salience 5000))
(id-root ?id confess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confess.clp 	confess0   "  ?id "  xoRa_svIkAra_kara )" crlf))
)

;"confess","V","1.xoRa_svIkAra_kara"
(defrule confess1
(declare (salience 4900))
(id-root ?id confess)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMgIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  confess.clp 	confess1   "  ?id "  aMgIkAra_kara )" crlf))
)

;"confess","VT","1.aMgIkAra_karanA"
;She confessed that she had taken the money.
;
