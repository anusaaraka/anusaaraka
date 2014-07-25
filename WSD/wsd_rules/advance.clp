;Added by human beings
(defrule advance0
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 tools)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp 	advance0   "  ?id "  pragawa )" crlf))
)

;Added by Sheetal(5-03-10)
;Her study has considerably advanced .
(defrule advance3
(declare (salience 5000));salience changed by Garima Singh
(id-root ?id advance)
(kriyA-subject ?id ?sub)
(id-word ?sub study)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance3   "  ?id "  baDZa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
;Recent advances in medical science.[oald]
;चिकित्सा विज्ञान के क्षेत्र में हाल ही की उन्नति/प्रगती.
;Major advances in the field of physics.[oald]
;भौतिक विज्ञान के क्षेत्र में प्रमुख उन्नति/प्रगती.
(defrule advance5
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id advances )
(viSeRya-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance5   "  ?id "  unnawi )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)11-jan-2014
;It's cheaper if you book the tickets in advance.[oald]
;अगर आप पहले से टिकट खरीद ले तो यह काफी सस्ता पड़ेगा
(defrule advance6
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance6   "  ?id "  pahale_se )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;We are willing to advance the money to you.[oald]
;हम आपको पैसा पहले  देना चाह रहें हैं
(defrule advance7
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance7   "  ?id "  pahale_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;We will advance you the money.[oald]
;हम आपको पैसा पहले देगें  
(defrule advance8
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_1  ?id ?obj)
(id-word ?obj money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale_xe))
(assert (kriyA_id-object2_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance8   "  ?id "  pahale_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object2_viBakwi   " ?*wsd_dir* " advance.clp  	advance8   "  ?id " ko )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;We live in an age of rapid technological advance.[oald]
;हम तेजी से तकनीकी प्रगती के युग में रहते हैं
(defrule advance9
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pragawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance9  "  ?id "  pragawI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;They offered an advance of £5000 after the signing of the contract.[oald]
;उन्होंने संविदा/अनुबंध पर हस्ताक्षर करने के बाद  £ 5000 की एक अग्रिम राशी दी. 
(defrule advance10
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id agrima_rASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance10 "  ?id "  agrima_rASI )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;He had made advances to one of his students.[oald]
;उसने अपने एक विधार्थी के साथ संबंध बनाने के प्रयास किये
;She rejected his sexual advances.[oald]
;उसने उसके यौन संबंध बनाने के प्रयास  नामञ्जूर किए
(defrule advance11
(declare (salience 5000))
(id-word ?id advances)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri make|reject)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa_banAne_ke_prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  advance.clp  	advance11 "  ?id "  saMbaMXa_banAne_ke_prayAsa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;The mob advanced on us, shouting angrily.[oald]
;टोली क्रोध से चिल्लाता हुए हमारी ओर बढ़ी
;She closed the door firmly and advanced towards the desk. [oald]
;उसने मजबूती से दरवाजा बन्द किया और पूछ-ताछ की ओर बढ़ी . 
(defrule advance13
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-towards_saMbanXI  ?id ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance13   "  ?id "  baDZa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;Our knowledge of the disease has advanced considerably over recent years.[oald]
;बीमारी का हमारा ज्ञान हाल के वर्षों में बहुत बेहतर /विकसित हुआ है . 
(defrule advance14
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-word ?sub knowledge|understanding|technology)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance14   "  ?id "  behawara_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;This research has done much to advance our understanding of language learning.[oald]
;इस शोध ने भाषा ज्ञान की हमारी समझ को बेहतर/विकसित  करने के लिये बहुत कुछ किया है . 
(defrule advance15
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-word ?obj knowledge|understanding|technology)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id behawara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance15   "  ?id "  behawara_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;The article advances a new theory to explain changes in the climate.[oald]
;लेख जलवायु में परिवर्तन समझाने के लिये एक नया सिद्धान्त प्रस्तुत करता है . 
(defrule advance17
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-root ?obj theory|plan|idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance17   "  ?id "  praswuwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;The date of the trial has been advanced by one week.[oald]
;मुकदमे की तारीख एक सप्ताह पहले की गयी है . 
(defrule advance18
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-word ?id1 week|day|month|year)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance18   "  ?id "  pahale_kara )" crlf))
)
;conflict: They had advanced 20 miles by nightfall.Therefore rule cannot be generalized.

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 6-Feb-2014
;The time of the meeting was advanced in view of the night curfew in the city. [oald]
; नगर में रात के कर्फ्यु को देखते हुये गोष्ठी का समय निश्चित समय से पूर्व कर दिया गया. 
(defrule advance19
(declare (salience 5000))
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-karma  ?id ?sub)
(id-word ?sub time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_samaya_se_pUrva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance19   "  ?id "  niSciwa_samaya_se_pUrva_kara )" crlf))
)



;************************DEFAULT RULES**************************************
;$$$ Modified spelling from 'Age_baDaz' to 'Age_baDZa' by Garima Singh
(defrule advance4
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object ?id ?));added by Garima Singh.Made a new rule16 for contradictory examples
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance4   "  ?id "  Age_baDZa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;Share prices showed significant advances. [oald]
;शेयर की कीमतो ने महत्त्वपूर्ण वृद्धि दिखाईं . 
(defrule advance12
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vqxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance12   "  ?id "  vqxXi )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;Studying for new qualifications is one way of advancing your career.[oald]
;नयी योग्यता के लिये अध्ययन करना आपका कैरियर को आगे बढाने का एक रास्ता है . 
;They worked together to advance the cause of democracy.[oald]
;उन्होंने लोकतंत्र का कारण को आगे बढाने के लिये एक साथ काम किया . 
(defrule advance16
(id-root ?id advance)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Age_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advance.clp   advance16   "  ?id "  Age_baDZA )" crlf))
)

;------------------- Removed rules ----------------
; advance1
;	if word is 'advanced'
;	   category is 'adjective' then	'pragawa'



;"advanced","Adj","1.unnawa"
;Today's advanced technology has made the world smaller.
;--"2.ucca_SreNI_ke"
;This dictionary is meant for an advanced learner.
;--"3.nayA/aBI_waka_sAmAnya_rupa_se_svIkqwi_nA_milA_huA"
;Though attractive,most of Mr.Gupta's very advanced ideas about traffic regulation are impractical.
;--"4.baDZA_huA"
;His advanced age does not prevent him from singing.
;
;
;default_sense && category=verb	Age_baDZanA[baDAnA]	0
;"advance","V","1.Age_baDZanA[baDAnA]"
;The army was ordered to advance.
;The protestors advanced their leader to talk with the minister.
;The man advanced towards her menacingly.
;--"2.pragawi_karanA"
;The company's shares advanced after the new director joined.
;--"3.agrima_rASi_xenA"
;The government gave an advance to the farmers to help them buy good seeds.
;--"4.vicAra_yA_suJAva_xenA"
;The corporation has advanced a new policy for regularising illegal
;constructions.
;--"5.niSciwa_samaya_se_pUrva_karanA"
;The time of the meeting was advanced in view of the night curfew in the city.
;
;LEVEL 
;
;
;1."advance","N", "1.Age_baDZanA"
;The advance of the enemy armed forces into the interior towns is alarming.
;xuSmana kI senAoM kA anxarUnI SaharoM meM Age baDZanA cinwA janaka hE. 
;The health department is desperate to halt the advance of brain fever     
;svAsWya viBAga maswiRka jvara ko aXika_baDZane se rokane ke liye Gora prayAsa kara rahA hE.
;2."vikAsa"
;The continued advance of some great civilizations always attract historians.
;kuCa mahawvapUrNa saByawAoM kA anavarawa vikAsa hameSA iwihAsakAroM ko AkarRiwa karawI hE.
;<-- vikAsa krama meM Age baDZanA
;It is controversial whether recent advances in technology are beneficial or
;detrimental to humanity.                                                        
;hAla kI wakanIkI vikAsa manuRya ke liye lABaxAyaka hE yA hAnikAraka yaha eka vivAxa kA 
;viRaya hE.
;<-- vikAsa krama meM Age baDZanA
;3."agrima rASi
;The company agreed to pay a festival advance of Rs.1000 to all its employees.
;kampanI apane saBI karmacAriyoM ko agrima (Age kI)rASi 1000 rupaye xene ke liye rAjZIho gayI.-agrima-Age kI                                                       
;
;4."baDZawa"   
;The auctioneer was disappointed to find no advance on the opening bid. 
;nIlAmakAra ko SuruAwI bolI kI baDZawa na pAkara bahuwa nirASA huI.
;
;5."xoswI/pyAra jawAne kI koSiSa" 
;How could Surpankha not feel dejected after all her amorous advances were 
;rejected by lakshmana.                                                          
;sUrpaNaKA kEse hawASa nahIM howI jaba ki usakI sArI pyAra kI koSiSeM lakRmaNa xvArA asvIkqwa kara xI gayIM.-pyAra kI koSiSa-baDZAvA 
;
;6."pahale hI"
;We booked our tickets for the magic show in advance.
;hama logoM ne apane tikateM mejika So ke liye pahale hI surakRiwa kara lI WIM.
;-pahale hI-Age se hI
;
;7."Age" 
;Plato's ideas were well in advance of his times.
;pleto ke vicAra usake samaya se bahuwa Age We.
;
;"advance","V","1.Age baDZanA"  
;The army was ordered to advance. 
;PZOja ko Age baDZane ke AxeSa xiye gaye.-Age baDZanA
;
;2."pragawi karanA" 
;The company's shares advanced after the new director joined.
;naye nixeSaka ke kampanI kA kAryaBAra lene ke bAxa se Seyarsa pragawi kara gaye.
;-pragawi karanA-Age baDZanA
;
;3."agrima rASi xenA"
;The government gave an advance to the farmers to help them buy good seeds. 
;sarakAra ne acCe bIja KarIxane ke liye kisAnoM ko agrima rASi xekara unakI maxaxa kI
;-agrima rASi-Age kI
;
;4.vicAra/suJAva xenA 
;The corporation has advanced a new policy for regularizing illegal constructions
;nigama ne gErakAnUnI nirmANoM ko niyamiwa karane ke liye naye suJAva xiye.-suJAva xenA-suJAva Age baDZAnA 
;
;5."niSciwa samaya se pUrva karanA"  
;The time of the meeting was advanced in view of the night curfew in the city.
;nagara meM rAwa ke karPyu ko xeKawe huye goRTI kA samaya niSciwa samaya se pUrva kara xiyA gayA.-pahale se Age kara xiyA gayA. 
;
;6."kImawoM Axi kA baDZanA" 
;Property values continue to advance rapidly.
;BUsampawwi kI kImaweM lagAwAra SIGrawA se Age baDZa rahI hEM.-Age baDZanA
;
;"advance","adj","1.agrima" 
;The company did not give any advance notice of it's closure.
; kampanI ne ise banxa karane kI koI BI agrima (Age se)sUcanA nahIM xI WI.
; -agrima--Age kI
;
;isa Sabxa ke yaxi hama saBI vAkyoM saMjFA , kriyA , Ora viSeRaNa para XyAna xeM wo samaswa arWoM kA BAva eka hI Sabxa'Age baDZanA'se nikAlA jA sakawA hE.
;   awa:uparyukwa Sabxa 'advance'ke liye sUwra-
;
;sUwra : Age[>pahale]_[baDZanA]
;
;sahI prawIwa howA hE. sambanXiwa Sabxa 'advanced ke uxAharaNa BI xeKa sakawe hEM. 
;
;
;
