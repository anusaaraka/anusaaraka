
(defrule gazette0
(declare (salience 5000))
(id-root ?id gazette)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sarakArI_gajata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gazette.clp 	gazette0   "  ?id "  sarakArI_gajata )" crlf))
)

;"gazette","N","1.sarakArI_gajata"
;The Railway's annual gazette comes in December.
;--"2.samAcAra_pawra"
;We donot get the London gazette here.
;
(defrule gazette1
(declare (salience 4900))
(id-root ?id gazette)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gajata_meM_CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gazette.clp 	gazette1   "  ?id "  gajata_meM_CApa )" crlf))
)

;"gazette","VT","1.gajata_meM_CApanA"
;The manager's appointment was gazetted yesterday.
;--"2.niyukwa_honA"
;Mr.Sharma has been gazetted as the director of the company.
;
