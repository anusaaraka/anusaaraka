;________________________________________________________________
;@@@ Added by Krithika 23/1/2014
;He pressed the flush with his hand. 	 [Cambridge]
;उसने अपने हाथ से फ्लश का बटन दबाया . 
;Translations by Mrs. Veena Bagga
(defrule flush2
(declare (salience 4400))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-cat_coarse ?id noun)
=> 
(retract ?mng)
(assert (id-wsd_root_mng ?id PlaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush2   "  ?id "  PlaSa )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;In a flush of anger he walked out of the room.  [Old clp]
;mkroXa ke Avega meM vaha kamare se bAhara nikala gayA.
;Translations retained from old clp.
(defrule flush3
(declare (salience 4600))
(id-root ?id flush)
(id-root =(+ ?id 1) of)
(id-root =(+ ?id 2) anger|excitement)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avega))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush3   "  ?id "  Avega )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;A pink flush spread over his cheeks.  [OALD]
;उसके गालों पर लाली कि झलक (छा ) फैल गयी (उसके गा्ल सुर्ख हो गए )  
;Translations by Mrs. Veena Bagga
(defrule flush4 
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id1 ?id)
(kriyA-over_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush4    "  ?id "  lAlImA )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;If you had been watching him closely, you would have seen a flush on his cheeks. [COCA]
;अगर आप उसे ध्यान से पास से देख रहें होते , तो आपने उसके गालों पर लाली देखी होती .(आपको उसके चेहरे पर तमतमाहट दिखती )  
;Translations by Mrs. Veena Bagga
(defrule flush5
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 cheek|face)
(viSeRya-on_saMbanXI  ?id ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush5   "  ?id "  lAlImA )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;A faint pink flush coloured her cheeks.	[Cambridge] 
;एक हल्की सी लाली ने उसके गालों को सुर्ख कर दिया . 
;Translations by Mrs. Veena Bagga
(defrule flush6
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id2)
(kriyA-subject  ?id1 ?id)
(id-root ?id2 cheek|face)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush6   "  ?id "  lAlImA )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;Flush is a game of betting.   [Old clp]
;PlaSa SarweM lagAne kA eka Kela hE.
;Translations retained from old clp.
(defrule flush7
(declare (salience 4600))
(id-root ?id flush)
(id-root ?id1 game)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PlaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush7   "  ?id "  PlaSa )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;The plants in his garden are in their second flush.   [Old clp]
;usake bagIce ke pOXe xUsarI bahAra_para hEM.
;Translations retained from old clp.
(defrule flush8
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush8   "  ?id "  bahAra)" crlf))
)
;__________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;The edge of the tank was flush with the ground. [Old clp]
;tEMka kA kinArA jZamIna ke samawala WA.
;Translations retained from old clp.
(defrule flush10
(declare (salience 5000))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) with)
;(id-root =(+ ?id 2) the)
(viSeRya-with_saMbanXI  ?id ?id1)
(viSeRya-det_viSeRaNa  ?id1 ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samawala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flush.clp  	flush10   "  ?id "  samawala )" crlf))
)
;__________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;His father is a rich man and is always flush with money. [Old clp]
;usake piwA ke pAsa BarapUra pEsA WA.
;Translations retained from old clp.
(defrule flush11
(declare (salience 4900))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
;(id-root =(+ ?id 1) with)
(viSeRya-with_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BarapUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flush.clp  	flush11   "  ?id "  BarapUra )" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 23/1/2014
;A rosy blush flushed her cheeks.    [OALD]
;उसके गा्ल शर्म से लाल हो गए .(गुलाबी हो गए ) 
;Translations by Mrs. Veena Bagga
(defrule flush12
(declare (salience 4300))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 cheek|face|him|her)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id    lAla_kara_xe))
(if ?*debug_flag* then   
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush12  "  ?id "  lAla_kara_xe )" crlf))
)
;_________________________________________________________
;$$$ Modified by Krithika 23/1/2014
;Meaning modified from ceherA_lAla_ho to lAla_ho_jA by Krithika 23/1/2014
;She flushed with anger.     [OALD]
;उसका चेहरा गुस्से से तमतमा गया .(वह गुस्से से तमतमा उठी )
;Translations by Mrs. Veena Bagga
(defrule flush13
(declare (salience 4300))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?id1))	; Added by Krithika 23/1/2014
(kriyA-with_saMbanXI  ?id ?id2)	; Added by Krithika 23/1/2014
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id    lAla_ho_jA))
(if ?*debug_flag* then   
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush13   "  ?id "  lAla_ho_jA )" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 23/1/2014
;He flushed when he was praised by his boss in the office.     [Old clp]
;usake bOYsa ne OYPisa meM jaba usakI wArIPa kI wo usake kapoloM para lAlI CA gayI.
;Translations retained from old clp.
(defrule flush14
(declare (salience 4300))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?id1))
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id1 pronoun|PropN)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id    lAla_ho_jA))
(if ?*debug_flag* then   
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush14   "  ?id "  lAla_ho_jA )" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 23/1/2014
;His face flushed when he was praised by his boss in the office.     [Self]
;जब उसके बॉस ने दफ्तर में उसकी तारीफ करी तो उसका चेहरा (ख़ुशी से ) लाल हो गया . 
;Translations by Mrs. Veena Bagga
(defrule flush15
(declare (salience 4300))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
;(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(id-root ?id1 face|cheek)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id    lAla_ho_jA))
(if ?*debug_flag* then   
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush15   "  ?id "  lAla_ho_jA )" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 22/1/2014
;Flush clean water through the pipe.   [OALD]
;पाइप के द्वारा स्वच्छ पानी निकालों ( बहा दो )
;Translations by Mrs. Veena Bagga
(defrule flush16
(declare (salience 4900))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush16   "  ?id "  bahA_xe)" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 22/1/2014
;He flushed away all the incriminating documents through the toilet.  [Old clp]
;usane saBI aBiyoga lagA xe sakane vAle xaswAvejZoM ko tOYyaleta ke pAnI meM bahA xiyA.
;Translations retained from old clp.
(defrule flush18
(declare (salience 4900))
(id-root ?id flush)
(id-root ?id1 away)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id  ?id1  bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  flush.clp 	flush18  "  ?id "   "?id1 "    bahA_xe)" crlf))
)
;_________________________________________________________
;@@@ Added by Krithika 22/1/2014
;Flush the pipe out with clean water.   [OALD]
;पाइप को बाहर से साफ पानी से धो दो .
;Translations by Mrs. Veena Bagga
(defrule flush19
(declare (salience 4900))
(id-root ?id flush)
(id-root ?id1 out)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2  ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
;(not(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id  ?id1  sAPZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng    " ?*wsd_dir* "  flush.clp 	flush19   "  ?id "   "?id1 "    sAPZa_kara)" crlf))
)
;____________________________________________________________
;$$$ Modified by Krithika 22/1/2014
;The police flushed out the bandits from their place of hiding.    [Old clp]
;pulisa ne dAkuoM ko unake Cipane ke sWAnoM se bAhara nikAla liyA.
;Translations retained from old clp.
(defrule flush20
(declare (salience 4900))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?id2)
(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))) ; Added by Krithika 22/1/2014
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush20  "  ?id "  " ?id1 "  bAhara_nikAla )" crlf))
)
;________________________________________________________________
;@@@ Added by Krithika 22/1/2014
;Laleh felt a faint flush on her cheeks, reading a rebuke of her.  [COCA]
;उसके चेहरे पर झिड़की के भाव देखकर लेलेह ने अपने गालो पर हल्की सी तमतमाहट महसूस की . ( उत्तेजना महसूस करी )
;Translations by Mrs. Veena Bagga
(defrule flush22
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id) 
(kriyA-on_saMbanXI  ?id1 ?id2)
(id-root ?id2 cheek|face)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAlImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush22   "  ?id "  lAlImA )" crlf))
)
;___________________________________________________________________________________________
;The police flushed out the bandits from their place of hiding.
;pulisa ne dAkuoM ko unake Cipe hue sWAna se bAhara nikAlA
(defrule flush23
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara_nikAla));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flush.clp    flush23    " ?id "  bAhara_nikAla )" crlf)) 
)
;_____________________________________________________________________________
;Removed by Krithika 23/1/2014
;Removed as the rule is redundant
;(defrule flush5
;(declare (salience 4500))
;(id-root ?id flush)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 out)
;(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id bAhara_nikAla));Automatically modified ;'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " flush.clp flush5 " ?id "  bAhara_nikAla )" crlf)) 
;)
;_____________________________________________________________________________
;Removed by Krithika 23/1/2014
;Removed as the rule is redundant
;(defrule flush6
;(declare (salience 4400))
;(id-root ?id flush)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 out)
;(kriyA-upasarga ?id ?id1)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " flush.clp	flush6  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
;)

;______________________________________________________________________________
;################################Default rules#######################################
;$$$ Modified by Krithika 22/1/2014
;Changed the meaning from Avega to prakRAlana and removed salience
;Give the toilet a flush.   [OALD]
;शौच को पानी से प्रक्षालन दो .
;Translations by Mrs. Veena Bagga
(defrule flush1
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=> 
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush1   "  ?id "  prakRAlana )" crlf))
)
;_________________________________________________________________________________
;@@@ Added by Krithika 23/1/2014
;Please flush the drain after you have taken bath.   [Old clp]
;jaba wuma nahA lo waba usake bAxa nAlI se pAnI bahA xenA.
;Translations retained from old clp.
(defrule flush21
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flush.clp 	flush21   "  ?id "  bahA_xe)" crlf))
)
;__________________________________________________________________
;$$$ Modified by Krithika 22/1/2014
;Changed the meaning from paripUrNa to samqxXa
;Removed relation "(id-word ?id flushed )"
;Removed salience and added example sentence with hindi translation
;I'm flush this week—I'll pay.   [OALD]
;इस हफ्ते मेरे पास पैसें हैं  मैं भुगतान कर दूंगा (रकम चुका दूंगा )
;Translations by Mrs. Veena Bagga
(defrule flush9
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id flushed )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  flush.clp  	flush9   "  ?id "  samqxXa )" crlf))
)
;____________________________________________________________________
;default_sense && category=noun	wASa kA eka Kela	0
;"flush","N","1.wASa kA eka Kela"
;Flush is a game of betting.
;
;LEVEL 
;Headword : flush
;
;Examples --
;
;--"1.lAlI"
;A flush spread over her face.
;usake gAloM para lAlI CA gayI.
;--"2.Avega"
;In a flush of anger he walked out of the room.
;kroXa ke Avega meM vaha kamare se bAhara nikala gayA.
;In the flush of excitement, he forgot to lock the door.
;uwwejanA ke Avega meM vaha xevAjZe para wAlA lagAnA BUla gayA.
;--"3.pAnI bahAnA"
;Please flush the drain after you have taken bath.
;jaba wuma nahA lo waba usake bAxa nAlI se pAnI bahA xenA.
;--"4.bahAra_para{awyaXika}"
;The plants in his garden are in their second flush.
;usake bagIce ke pOXe xUsarI bahAra_para hEM.
;
;"flush","V","1.kapola para lAlI CAnA"
;He flushed whenhe was praised by his boss in the office.
;usake bOYsa ne OYPisa meM jaba usakI wArIPa kI wo usake kapoloM para lAlI CA gayI.
;--"2.pAnI se bahAnA"
;He flushed away all the incriminating documents through the toilet.
;usane saBI aBiyoga lagA xe sakane vAle xaswAvejZoM ko tOYyaleta ke pAnI meM bahA xiyA.
;
;"flush out","PhrV","1.bAhara nikAlanA"
;The police flushed out the bandits from their place of hiding.
;pulisa ne dAkuoM ko unake Cipane ke sWAnoM se bAhara nikAla liyA.
;
;"flush","Adj","1.samawala"
;The edge of the tank was flush with the ground.
;tEMka kA kinArA jZamIna ke samawala WA.
;--"2.BarapUra"
;His father is a rich man && is always flush with money.
;usake piwA ke pAsa BarapUra pEsA WA.
;
;"flush","N","1.wASa kA eka Kela"
;Flush is a game of betting.
;PlaSa SarweM lagAne kA eka Kela hE.
;
;
;Upara xiye saBI uxAharaNoM meM 'flush' ke arWa paraspara asambanXiwa lagawe hEM. awaH isa Sabxa kI vyuwpawwi xeKI jA sakawI hE.
;
;GCIDE ke anusAra -
;
;Flush (?), v. i. [imp. & p. p. Flushed (?); p. pr. & vb. n. Flushing.]
;  [Cf. OE. fluschen to fly up, penetrate, F. fluz a flowing, E. flux,
;  dial. Sw. flossa to blaze, && E. flash; perh. influenced by blush.
;  \'fb84.] 1. To flow && spread suddenly; to rush; as, blood flushes
;  into the face.
;  [1913 Webster]
;
;'PlaSa' Sabxa 'olda iMgaliSa' Sabxa 'PlUSena' se vyuwpanna hE jisakA arWa 'Upara ko udZanA yA BexanA' WA. jisase PrAMsIsI BARA meM 'PlajZa' Sabxa AyA jisakA arWa 'pravAha' ho gayA. 
;
;isakA arWa kuCa nimnaprakAra se vikasiwa huA lagawA hE --
;
;acAnaka bahanA - gawipUrvaka pravAha - jaba mana meM koI Avega howA hE wo rakwa BI cehare para gawi se AwA hE jisase cehare para lAlI A jAwI hE - cehare para lAlimA CAnA
;
;isa Sabxa kA anwarnihiwa sUwra kuCa isa prakAra xiKawA hE --
;
;anwarnihiwa sUwra ;
;
;                            wIvra_pravAha{acAnaka} 
;                                 |
;                     |-----------|-----------|
;                     |                       |
;                  pravAhiwa_karanA[honA]        pravAha
;                   (pAnI_bahAnA)               |-----out-----bAhara_nikAlanA
;                                            (Avega)
;                                              |_kA_pariNAma 
;                                           |--------|
;                                           |        |
;                                          lAlimA   bahAra
;                                   (rakwa kA pravAha) ( (PUla_KilanA)  
;       
;    
;"flush out" meM 'pravAha bAhara nikAlane' kA arWa A jAwA hE. 
;
;isa Sabxa kA eka anya arWa 'samawala' BI hE. GCIDE ke anusAra yaha purAnA prayoga hE.
;
;	(Arch. & Mech.) Unbroken or even in surface; on a level with the
;  adjacent surface; forming a continuous surface; as, a flush panel; a
;  flush joint.
;  [1913 Webster]
;
;kyoMki yaha arWa viSiRta prayoga kRewra se hE Ora 'flush' ke anya arWoM se Binna hE awaH ise alaga mAna lenA TIka hogA.
;
;jahAz waka anwima uxAharaNa meM 'flush' ke arWa kA praSna hE, yaha wASa ke eka Kela kA nAma hE Ora isa Kela meM 'eka se pawwa AnA' mahawvapUrNa howA hE. awaH isako 'bahAra' se jodZA jA sakawA hE. isaprakAra isa Sabxa kA sUwra banegA -
;
;sUwra : pravAha{wIvra_acAnaka}[>lAlimA]/samawala 

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_flush8
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " flush.clp   sub_samA_flush8   "   ?id " bahAra)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_flush8
(declare (salience 4600))
(id-root ?id flush)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " flush.clp   obj_samA_flush8   "   ?id " bahAra)" crlf))
)
