
(defrule tan0
(declare (salience 5000))
(id-root ?id tan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BUrA_raMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tan.clp 	tan0   "  ?id "  BUrA_raMga )" crlf))
)

;"tan","N","1.BUrA_raMga{XUpa_ke_kAraNa_wvacA_para_AnevAlA}"
;People sit in the sun to get a good tan.
;
(defrule tan1
(declare (salience 4900))
(id-root ?id tan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wvacA_para_BUrApana_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tan.clp 	tan1   "  ?id "  wvacA_para_BUrApana_A )" crlf))
)

;"tan","VTI","1.wvacA_para_BUrApana_AnA{XUpa_ke_kAraNa}"
;Don't walk  in the scorching sun.You will tan your body .
;
