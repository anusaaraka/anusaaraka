
(defrule relief0
(declare (salience 5000))
(id-root ?id relief)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_koRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relief.clp 	relief0   "  ?id "  sahAyawA_koRa )" crlf))
)

;"relief","Adj","1.sahAyawA_koRa"
;Relief fund was collected for helping the quake victims.
;
(defrule relief1
(declare (salience 4900))
(id-root ?id relief)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAhawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  relief.clp 	relief1   "  ?id "  rAhawa )" crlf))
)

;default_sense && category=noun	uBarI_huI_nakkASI	0
;"relief","N","1.uBarI_huI_nakkASI"
;A relief map of India,i.e.showing mountains,valleys,gulfs,seas,etc. 
;--"2.raMga_Ora_SediMga_xvArA_UzcAI_kA_praxarSana"
;The hills stood out in sharp relief against the dawn sky.
;--"1.sahAyawA{koRa}"
;She sent some relief to refugees.
;--"2.ArAma"
;The injection gave the patient much relief.
;--"3.viSrAma"
;He did duty from 9a.m.to8p.m.with only one hour's relief.   
;--"4.rAhawa"
;She heaved a sigh of relief when her son returned home safely. 
;--"5.CUta"
;They got temporary financial relief from the tax due to severe drought.     
;
