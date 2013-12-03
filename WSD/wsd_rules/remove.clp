;"remove","N","1.hatAva_yA_xUra_hone_kI_kriyA"
;Her account of the incident was several removes from the truth. [Hinkhoj Dictionary, Old file]
;उसकी घटना का खाता सच्चाई से कई हटाव पर है ।
;Modified by Anita-27.11.2013 as Suggested by Chaitanya ji (mng 'hatAva_yA_xUra_hone_kI_kriyA' to 'hatAva')
(defrule remove0
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id removes) ;Suggested by Chaitanya ji 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove0   "  ?id "  hatAva )" crlf))
)

;Modified by Anita-27.11.2013 
;This detergent will remove even old stains. [Cambridge Dictionary] 
;यह साबुन पुराने धब्बे भी निकाल देगा ।
(defrule remove1
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 stain|spot)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove1   "  ?id "  nikAla_xe )" crlf))
)

;Added by Anita-27.11.2013 
;The men came to remove the rubbish from the backyard. [Cambridge Dicionary]
;पिछवाड़े का कचरा ले जाने के लिए आदमी आया था ।
(defrule remove3
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 rubbish)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove3   "  ?id "  le_jA )" crlf))
)

;Added by Anita-27.11.2013 
;It got so hot that he removed his tie and jacket. [Cambridge Dictionary ]
;इतनी गर्मी हो गयी कि उसे अपनी टाई और जैकेट भी उतारनी पड़ी ।
(defrule remove4
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove4   "  ?id "  uwAra_xe )" crlf))
)

;Added by Anita-27.11.2013 
;They decided to remove their son from the school. [Cambridge Dictionary]
;उन्होंने अपने बेटे को स्कूल से निकालने का निश्चय किया ।
(defrule remove5
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 school|college|hostel|class|house|home)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove5   "  ?id "  nikAla )" crlf))
)

;Added by Anita-27.11.2013 
;Hearing your opinion has removed my last doubts about her. [Cambridge Dictionary]
;तुम्हारे विचार को सुनकर मेरा आखिरी संदेह भी उसके बारे में खत्म हो गया ।
;Hearing your opinion has removed my last suspicions about her.
(defrule remove6
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id  ?id1)
(id-root ?id1 doubt|suspicion)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove6   "  ?id "  Kawma_ho )" crlf))
)

;Added by Anita-27.11.2013 
;Remove your hand from my shoulder.
;mere kanXe se ApakA hAWa hatAie. 
(defrule remove7
(declare (salience -10));Reduced salience to stop firing for this sentence. Ex: Remove these spots from your shirt. 
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(AjFArWaka_kriyA  ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove7   "  ?id "  hatA )" crlf))
)
;--------------------------- Default Rules -------------------------
;Refer to Sabdasutra
;default_sense && category=verb	hatA_xe	0
;"remove","V","1.hatA_xe"
;The company's shareholders have voted to remove the executive board
;कंपनी के शेयर होल्डर्स ने एग्जीक्यूटिव बोर्ड को हटाने के लिए वोट दिए .
;Several opposition groups are fighting to remove the president from power .
;बहुत से विरोधी दल प्रेसिडेंट को हटाने के लिए लड़ाई कर रहें हैं
(defrule remove_default
(declare (salience -20)) ;Reduced salience by Anita 
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove_default   "  ?id "  hatA_xe )" crlf))
)
;--------------------------- Old Examples -------------------------
;"remove","VTI","1.hatA_xenA"
;Remove your hand from my shoulder. 
;--"2.xUra_karanA"
;Remove these spots from your shirt. 
;--"3.alaga_karanA"
;He has been removed from his service. 
;--"4.anwa_karanA"
;We should remove terrorism from our country.  
;--"5.eka_jagaha_se_xUsarI_jagaha_jAnA"
;We removed to Mumbai early in June. 
;Above sentence is not valid. Sentence can be like this
;We re moved to Mumbai early in June. (Suggested by Anita ji 27-11-13) 
;
