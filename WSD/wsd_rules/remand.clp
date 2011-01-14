
(defrule remand0
(declare (salience 5000))
(id-root ?id remand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id punaH_preRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remand.clp 	remand0   "  ?id "  punaH_preRaNa )" crlf))
)

;"remand","N","1.punaH_preRaNa"
;Those prisoners are on remand.
;
(defrule remand1
(declare (salience 4900))
(id-root ?id remand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApisa_lOtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remand.clp 	remand1   "  ?id "  vApisa_lOtA )" crlf))
)

;"remand","V","1.vApisa_lOtAnA"
(defrule remand2
(declare (salience 4800))
(id-root ?id remand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remand.clp 	remand2   "  ?id "  vApasa_Beja )" crlf))
)

;"remand","VT","1.[havAlAwa]_vApasa_BejanA[karanA]"
;The accused was remanded in custody for four days.
;
