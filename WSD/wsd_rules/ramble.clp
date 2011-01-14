
(defrule ramble0
(declare (salience 5000))
(id-root ?id ramble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rambling )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id teDZI_meDZI_galiyAz_yA_imAraweM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ramble.clp  	ramble0   "  ?id "  teDZI_meDZI_galiyAz_yA_imAraweM )" crlf))
)

;"rambling","Adj","1.teDZI_meDZI_galiyAz_yA_imAraweM"
;If you go to old city of Hyd.You can see many old rambling mansions.  
;--"2.asaMbanxXa_BARaNa"     
;She delivers a long rambling speeches. 
;
(defrule ramble1
(declare (salience 4900))
(id-root ?id ramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BramaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ramble.clp 	ramble1   "  ?id "  BramaNa )" crlf))
)

;"ramble","N","1.BramaNa"
;She goes for a nature ramble.
;
(defrule ramble2
(declare (salience 4800))
(id-root ?id ramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ramble.clp 	ramble2   "  ?id "  GUma )" crlf))
)

;"ramble","VI","1.GUmanA"
;He rambles along country lanes.
;--"2.asaMgawa_bAweM_karanA_yA_liKanA"
;The old man would often ramble on about the past.
;--"3.kisI_pOXe_kA_anya_pOXe_para_uganA"
;Her roses were rambling over an old stone wall. 
;
