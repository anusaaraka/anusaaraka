
;@@@ Added by jagriti(13.8.2013))
;"corrupt","Adj","1.BraRta"
;Ram is a corrupted person. 
;Mohan is a highly corrupt officer.
(defrule corrupt00
(declare (salience 5100))
(id-root ?id corrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(or (id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrupt.clp 	corrupt00   "  ?id "  BraRta )" crlf))
)

;$$$ Modified by jagriti(13.8.2013))
; receiver receives a corrupted version of the transmitted signal. 
(defrule corrupt0
(declare (salience 5000))
(id-root ?id corrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corrupt.clp 	corrupt0   "  ?id "  vikqwa )" crlf))
)

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
