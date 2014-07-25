;$$$ Modified by Anita -24.3.2014
;Although acceleration can vary with time our study in this chapter will be restricted to motion with constant ;acceleration.
;यद्यपि गतिमान वस्तु का त्वरण समय के साथ - साथ बदल सकता है,परन्तु सुविधा के लिए इस अध्याय में गति सम्बन्धी हमारा अध्ययन मात्र स्थिर त्वरण तक ही ;सीमित रह जायेगा ।
(defrule restrict0
(declare (salience 5000))
(id-root ?id restrict)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id restricted )
(kriyA-to_saMbanXI  ?id ?); Added relation by Anita 24.3.2014
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImiwa_raha_jA)); modified meaning from 'sImiwa' to 'sImiwa_raha_jA' by Anita-24.3.2014
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  restrict.clp  	restrict0   "  ?id "  sImiwa_raha )" crlf))
)

;"restricted","Adj","1.sImiwa"
;The drug has only a restricted commercial use.
;--"2.Apa_logoM_ke_liye_varjiwa"    
;Enter a restricted zone.
;
(defrule restrict1
(declare (salience 4900))
(id-root ?id restrict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parimiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  restrict.clp 	restrict1   "  ?id "  parimiwa )" crlf))
)

;"restrict","VT","1.parimiwa/sImiwa_karanA"
;Speed limit restricted to 40km.an hour within city limits. 
;--"2.Restrict your self to one cup of tea a day"
;
;
