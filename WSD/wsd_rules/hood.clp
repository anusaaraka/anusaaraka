
(defrule hood0
(declare (salience 5000))
(id-root ?id hood)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hooded )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id DakanA_lagA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hood.clp  	hood0   "  ?id "  DakanA_lagA_huA )" crlf))
)

;"hooded","Adj","1.DakanA lagA huA"
;varRA se bacane ke liye 'hooded'(topI vAlI) barasAwI pahananA cAhiye.
;
(defrule hood1
(declare (salience 4900))
(id-root ?id hood)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_garxana_Dakane_ke_liye_topI_yA_cogA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hood.clp 	hood1   "  ?id "  sira_garxana_Dakane_ke_liye_topI_yA_cogA )" crlf))
)

;"hood","N","1.sira garxana Dakane ke liye topI yA cogA"
;dijala eMjina meM cAlaka kakRa Sorta 'hood'kahalAwA hE.
;
;