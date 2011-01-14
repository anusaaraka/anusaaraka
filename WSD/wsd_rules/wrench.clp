
(defrule wrench0
(declare (salience 5000))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench0   "  ?id "  marodZa )" crlf))
)

;"wrench","N","1.marodZa"
;He got a wrench in his back while travelling.
;--"2.[BAvanAoM_ko]Tesa_pahuzcAnA"
;She felt a wrench when her boy friend left her.
;--"3.nata_bolta_kasane_kA_upakaraNa"
;The plumber uses the wrench.
;
(defrule wrench1
(declare (salience 4900))
(id-root ?id wrench)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrench.clp 	wrench1   "  ?id "  KIMca_le )" crlf))
)

;"wrench","VT","1.KIMca_lenA"
;The violent storm wrenched the main door.
;
