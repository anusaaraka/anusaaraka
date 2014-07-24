;$$$--- Modified by Nandini(28-4-14)
;Mountaineers carry lightweight equipment while climbing.
;parvawArohI caDawe samaya kama vajana kA sAmAna le jAwe hE. ;Added hin-sentence  by Nandini  
(defrule lightweight0
(declare (salience 5000))
(id-root ?id lightweight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_vajana_kA));meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightweight.clp 	lightweight0   "  ?id "  kama_vajana_kA)" crlf))
)


;"lightweight","Adj","1.kama_BAra_kA"

;$$$--- Modified by Nandini(28-4-14)
;He is a lightweight in politics.
;vaha rAjanIwi meM prabhavhIna hE. ;Added hin-sentence  by Nandini  
(defrule lightweight1
;(declare (salience 4900));salience change by Nandini
(id-root ?id lightweight)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun);remove cat_course by Nandini
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAvahIna ));meaning change by Nandini
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  lightweight.clp 	lightweight1   "  ?id " praBAvahIna )" crlf))
)



;"lightweight","N","1.praBAva_rahiwa"
;He is a lightweight in politics.
;
