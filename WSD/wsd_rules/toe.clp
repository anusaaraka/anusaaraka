
(defrule toe0
(declare (salience 5000))
(id-root ?id toe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAzva_kA_azgUTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toe.clp 	toe0   "  ?id "  pAzva_kA_azgUTA )" crlf))
)

;"toe","N","1.pAzva_kA_azgUTA"
;--"2.pAzva_kA_aMgUTA"
;Manuj heart his toe while playing football.
;
(defrule toe1
(declare (salience 4900))
(id-root ?id toe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxeSa_kA_pAlana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  toe.clp 	toe1   "  ?id "  AxeSa_kA_pAlana_kara )" crlf))
)

;"toe","VT","1.AxeSa_kA_pAlana_karanA"
;The leader asked his deputy to toe his line.
;
