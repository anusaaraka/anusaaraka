
(defrule across0
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) accept|acknowledge|add|admit|agree|allege|announce|answer|argue|arrange|assert|assume|assure|believe|boast|check|claim|comment|complain|concede|conclude|confirm|consider|contend|convince|decide|demonstrate|deny|determine|discover|dispute|doubt|dream|elicit|ensure|estimate|expect|explain|fear|feel|figure|find|foresee|forget|gather|guarantee|guess|hear|hold|hope|imagine|imply|indicate|inform|insist|judge|know|learn|maintain|mean|mention|note|notice|notify|object|observe|perceive|persuade|pledge|pray|predict|pretend|promise|prophesy|prove|read|realize|reason|reassure|recall|reckon|record|reflect|remark|remember|repeat|reply|report|require|resolve|reveal|say|see|sense|show|state|suggest|suppose|swear|teach|tell|think|threaten|understand|vow|warn|wish|worry|write)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_ke_pAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across0   "  ?id "  isa_ke_pAra_ki )" crlf))
)

; He told us about who killed whom.
(defrule across1
(declare (salience 4900))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) what|when|where|why|how|who)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id usa_ke_oAra_ki))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across1   "  ?id "  usa_ke_oAra_ki )" crlf))
)

;Added by Meena(15.01.10)
;The jet zoomed across the sky.
(defrule across3
(declare (salience 4800))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-across_saMbanXI  =(- ?id 1) ?id1)
(id-word ?id1 sky|fog)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across3   "  ?id "  meM )" crlf))
)


;$$$ modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;In her hurry she stepped on a spot of oil and slid right up to him across the floor of the shop.
;जल्दबाजी में नीचे गिरे तेल के ऊपर वह फिसल गयी और  फर्श के उस पार उसके पास जा गिरी।
;Added by Aditya and Hardik (21-06-2013),IIT(BHU) batch 2012-2017.
;I am going across the border.
(defrule across5
(declare (salience 4000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-across_saMbanXI  =(- ?id 1) ?id1)
(or
(kriyA-across_saMbanXI  ?id1 ?id2)
(viSeRya-across_saMbanXI  ?id1 ?id2)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_usa_pAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across5   "  ?id "  ke_usa_pAra )" crlf))
)



;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;I drew a line across the page.[oald]
;मैंने पन्ने के आरपार रेखा खींची
(defrule across6
(declare (salience 4600))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-across_saMbanXI  ?kri ?id1)
(kriyA-object  ?kri ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_ArapAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across6   "  ?id "  ke_ArapAra )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;A grin spread across her face.[oald]
;उसके चेहरे पर एक मुस्कराहट फैल गयी
;He hit him across the face.[oald]
;उसने उसे चेहरे पर मारा.
;It's too tight across the back.[oald]
;यह पीठ पर बहुत तंग है.
(defrule across7
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-across_saMbanXI  ?kri ?id1)(viSeRya-across_saMbanXI  ? ?id1))
(id-root ?id1 face|back)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across7   "  ?id "  para )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;This view is common across all sections of the community.[oald]
;यह दृश्य समुदाय के सभी वर्गों में समान है.
(defrule across8
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-across_saMbanXI  ?id1 ?id2)
(id-root ?id2 section|country)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across8   "  ?id "  meM )" crlf))
)




;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;We can't swim across.[oald]
;हम तैर कर पार नहीं कर सकते
(defrule across9
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-root ?kri swim|help)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id isa_Cora_se_usa_Cora_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across9   "  ?id "  isa_Cora_se_usa_Cora_waka )" crlf))
)
;note: a better meaning is required.


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;I helped the old lady across.[oald]
;मैंने बूढ़ी औरत की इस छोर से उस छोर तक मदद की
;(defrule across10
;(declare (salience 5000))
;(id-root ?id across)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-upasarga  ?kri ?id)
;(id-root ?kri help)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id isa_Cora_se_usa_Cora_waka))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across10   "  ?id "  isa_Cora_se_usa_Cora_waka )" crlf))
;)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;When my name was called, he looked across at me.[oald]
;जब मेरा नाम कहा पुकारा गया तो उसने मेरी ओर देखा . 
(defrule across11
(declare (salience 5500))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(kriyA-at_saMbanXI  ?kri ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across11   "  ?id "  - )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;He leaned across to pick up his wallet.[oald]
;वह उसका झोला उठाने के लिये नीचे कि ओर झुका  
(defrule across12
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?kri ?id)
(id-root ?kri lean)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across12   "  ?id "  nIce_kI_ora )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 02-jan-2014
;There's a school just across from our house.[oald]
;हमारे घर से ठीक दूसरी तरफ विद्यालय है . 
(defrule across13
(declare (salience 5000))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) from)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUsarI_waraPa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp    across13   "  ?id "  xUsarI_waraPa )" crlf))
)




;**************DEFAULT RULES*****************************************



;Salience reduced by Meena(18.01.10)
(defrule across4
(declare (salience 0))
;(declare (salience 4700))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_saBI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across4   "  ?id "  ke_saBI_ora )" crlf))
)


;"across","Prep","1.saBI_ora"
;The President's address to the nation was broadcasted across the country.
;--"2.usa_pAra_se"
;My friend shouted at me across the road.
;--"3.ke_Upara_yA_sAmane"
;She folded her arms across her chest while talking.
;--"4.vahAz_se_yahAz"
;The student drew a line across the sheet.
;


(defrule across2
(declare (salience 4800))
(id-root ?id across)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArapAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  across.clp 	across2   "  ?id "  ArapAra )" crlf))
)

;"across","Adv","1.ArapAra"
;I helped the old lady across.
;--"2.usa_pAra"
;We shall leave Delhi today && we should be across in Wagah by night.
;--"3.koI_eka_xiSA_meM"
;He leaned across to pick up his wallet.
