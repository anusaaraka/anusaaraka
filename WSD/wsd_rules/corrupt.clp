
(defrule corrupt0
(declare (salience 5000))
(id-root ?id corrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrupt.clp 	corrupt0   "  ?id "  BraRta )" crlf))
)

;"corrupt","Adj","1.BraRta"
;Mohan is a highly corrupt officer.
;--"2.niyamoM_kA_anusaraNa_na_karanevAlA"
;I hate their corrupt industry.
;--"3.bigadZI_huI_BARA/leKa/detA_Axi"
;That movie was a corrupt form of Howthorne's novel `The Scarlet Letter'.
;
(defrule corrupt1
(declare (salience 4900))
(id-root ?id corrupt)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrupt.clp 	corrupt1   "  ?id "  BraRta_kara )" crlf))
)

(defrule corrupt2
(declare (salience 4800))
(id-root ?id corrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrupt.clp 	corrupt2   "  ?id "  BraRta_ho_jA )" crlf))
)

;"corrupt","V","1.BraRta_kara[ho_jA]"
;--"2.BraRta_ho_jAnA"
;Violent && vulgar movies corrupt children's mind.
;
