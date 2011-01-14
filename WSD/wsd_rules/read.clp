
(defrule read0
(declare (salience 5000))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reading )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paDZanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  read.clp  	read0   "  ?id "  paDZanA )" crlf))
)

;"reading","N","1.paDZanA"
;He is a man of good reading.  
;--"2.vAcana_paTana"   
;Children should always do loud reading. 
;--"3.kisI_mItara_dAyala_Axi_xvArA_cihniwa_saMKyA"  
;He has come for water meter reading.  
;
(defrule read1
(declare (salience 4900))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  read.clp 	read1   "  ?id "  paDZa )" crlf))
)

;"read","VTI","1.paDZanA"
;We should teach children how to read && write. 
;He read a story to us.
;I read about the train accident in today's paper. 
;--"2.samaJanA"    
;A driver must be able to read traffic signs. 
;--"3.aXyayana_karanA"  
;He is reading for a mathematics degree at Oxford. 
;--"4.xeKanA"
;I offered my hand to the astrologer to read it. 
;--"5.xiKAnA"   
;The meter reads 4895 units.
;--"6.arWa_raKanA"     
;The sign reads,'Keep Left'. 
;
;
