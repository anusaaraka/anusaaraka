;FILE MODIFIED BY MEENA(22.8.09)


(defrule help0
(declare (salience 5000))
(id-root ?id help)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id helping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id eka_samaya_meM_parose_jAne_vAle_Bojana_kI_mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  help.clp  	help0   "  ?id "  eka_samaya_meM_parose_jAne_vAle_Bojana_kI_mAwrA )" crlf))
)

;"helping","N","1.eka samaya meM parose jAne vAle Bojana kI mAwrA"
;relve kentIna meM"helping"Bojana hI milawA hE.



;We should help the poor.
(defrule help1
(declare (salience 4900))
(id-root ?id help)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 ?)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  help.clp 	help1   "  ?id "  sahAyawA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  help.clp      help1   "  ?id " kI )" crlf)
)
;(assert (kriyA_id-subject_viBakwi ?id ne))
)



(defrule help2
(declare (salience 4800))
(id-root ?id help)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  help.clp 	help2   "  ?id "  sahAyawA )" crlf))
)

;"help","N","1.sahAyawA"
;XanavAnoM ko nirXanoM ko"help"xenA cAhiye.
; 
;"helpful","Adj","1.sahAyaka"
;vaha ikalOwA ladZakA usakI mAz ke liye"helpful" hE.
; 
;"helpfully","Adj","1.maxaxagAra"
;usakA miwra hameSA musIbawa meM usakA"helpfully"rahA hE.(maxaxagAra rahA)
;
;
