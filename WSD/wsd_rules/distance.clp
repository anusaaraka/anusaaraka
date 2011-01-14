
(defrule distance0
(declare (salience 5000))
(id-root ?id distance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distance.clp 	distance0   "  ?id "  xUrI )" crlf))
)

;"distance","N","1.xUrI"
;The distance from Indore to Bhopal is around 300 km.
;
(defrule distance1
(declare (salience 4900))
(id-root ?id distance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svayaM_ko_kisI_se_xUra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  distance.clp 	distance1   "  ?id "  svayaM_ko_kisI_se_xUra_kara )" crlf))
)

;"distance","VT","1.svayaM_ko_kisI_se_xUra_karanA"
;He distanced himself from campus politics.
;
