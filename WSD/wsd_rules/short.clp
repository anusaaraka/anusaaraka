
(defrule short0
(declare (salience 3000))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shorts )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id CotI_pawalUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  short.clp  	short0   "  ?id "  CotI_pawalUna )" crlf))
)

;"shorts","N","1.CotI pawalUna"
;One feel comfortable in shorts while playing.
;
(defrule short1
(declare (salience 100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short1   "  ?id "  alpa )" crlf))
)

(defrule short2
(declare (salience 4000))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short2   "  ?id "  CotA )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;Let us take a short rest and sleep a little and then we can continue on our way.
;आओ थोड़ी देर झपकी ले लें फिर आगे बढ़गें।
;The school has a short vacation in between the semesters.
;sEmestaroM ke bIca meM skUla meM WodZI  CuttiyAz rahawI hEM.
;He lives at a short distance from here.[rajpal]
;वह यहाँ से थोडी दूरी पर रहता है . 
(defrule short3
(declare (salience 4800))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 rest|vacation|distance|time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short3   "  ?id "  WodZI )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;A short behaviour .
;एक चिड़चिड़ा व्यवहार.	
(defrule short4
(declare (salience 4700))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 behaviour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidZacidZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short4   "  ?id " cidZacidZA )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;A short eyesight fellow .
(defrule short5
(declare (salience 4600))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root =(+ ?id 1) eyesight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short5   "  ?id " nikata )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;They were asked to submit a short report of the event.
;unase GatanA kI eka saMkRipwa reporta xene ko kahA gayA.
(defrule short6
(declare (salience 4500))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 report|essay|synopsis|presentation|story)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short6   "  ?id " saMkRipwa )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;He is short of time.
;usake pAsa samaya kI kamI hE.
;He is short of ideas for improving the sales of the company.
;kampanI kI bikrI baDZAne ke liye nae vicAroM kI usake pAsa kamI hE.

(defrule short7
(declare (salience 4200))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short7   "  ?id " kamI )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;It took just short of fifteen minutes to reach the station.
;steSana waka pahuzcane meM 15 minata se kuCa kama lage.
(defrule short8
(declare (salience 4400))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root =(- ?id 1) just)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id =(- ?id 1) se_kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short8   "  ?id " se_kama )" crlf))
)
;@@@ Added by jagriti(3.1.2014)
;The bus had a puncture just short of the bus stand.
;basa stEMda se WodZA pahale hI basa meM paMkcara ho gayA.
(defrule short9
(declare (salience 4300))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?id1)
(id-root ?id1 just)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng  ?id ?id1 WodZA_pahale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short9   "  ?id " WodZA_pahale )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;Short skirts are in again.
;छोटी स्कर्ट फिर से चलन में हैं . 
(defrule short10
(declare (salience 4200))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id))
(id-root ?id1 skirt|turban)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CotI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short10   "  ?id " CotI )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;Short memory.[rajpal]
;कमजोर स्मृति . 
(defrule short11
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 intelligence|memory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short11   "  ?id " kamajora )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;Short intelligence.[rajpal]
;अल्प ज्ञान . 
(defrule short12
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 intelligence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short12   "  ?id " alpa )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;Short notice.[rajpal]
; अल्पकालिक सूचना .
(defrule short13
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 notice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short13  "  ?id " alpakAlika )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;Short vowel.[rajpal]
;Short wave.[rajpal]
(defrule short14
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 vowel|wave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laGu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  short.clp 	short14  "  ?id " laGu )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;To detect shorts in someone.[rajpal]
;किसी में कमजोरी का पता लगाना . 
(defrule short15
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id shorts)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kamajorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  short.clp  	short15   "  ?id "  kamajorI )" crlf))
)

;"short","Adj","1.CotA"
;They had to walk only a short distance to reach the station.
;
;LEVEL 
;
;
;
;Headword : short
;
;Examples --
;
;1. "CotA"
;Both the girls had short black hair.
;xono ladZakiyoM ke kAle Cote bAla We.
;It was a short walk from there house to the station.
;unake Gara se steSana waka CotA-sA pExala kA rAswA WA.
;The days are shorter during the winter months.
;sarxiyoM ke mahInoM meM xina Cote howe hEM.
;
;2. "saMkRipwa"
;They were asked to submit a short report of the event.
;unase GatanA kI eka saMkRipwa reporta xene ko kahA gayA.
;
;3. "kamI"
;He is short of time.
;usake pAsa samaya kI kamI hE.
;He is short of ideas for improving the sales of the company.
;kampanI kI bikrI baDZAne ke liye nae vicAroM kI usake pAsa kamI hE.
;
;4. "se_kama"
;The packet should contain five envelops, but it is short of one.
;pEketa meM pAzca liPAPe hone cAhiez, lekina isameM eka kama hE.
;It took just short of fifteen minutes to reach the station.
;steSana waka pahuzcane meM 15 minata se kuCa kama lage.
;
;5. "WodZA_pahale"
;The bus had a puncture just short of the bus stand.
;basa stEMda se WodZA pahale hI basa meM paMkcara ho gayA.
;
;6. "se_WodZI_xUra_para"
;The stone fell just short of me.
;muJase WodZI_hI_xUra_para pawWara girA. 
;
;7. "WodZe_samaya_kA"
;The school has a short vacation in between the semesters.
;sEmestaroM ke bIca meM skUla meM WodZe samaya kI CuttiyAz rahawI hEM.
;
;8. "ruKAI_liye_hue"
;He was a bit short with his wife.              
;apanI pawnI ke prawi usakA vyavahAra kuCa ruKAI liye hue WA.
;
;9. "Cote" 
;He will be back in two short months.
;vaha (Cote-Cote) xo mahInoM meM vApasa A jAegA. <--WodZe_hI_samaya_meM
;Upara xiye uxAharaNoM se spaRta hE ki 'short' meM 'Cote-WodZe' yA xUsare SabxoM meM kaheM wo 'alpa' kA BAva hE.
;
;'alpa' vaswu, sWAna yA samaya kuCa BI ho sakawA hE.
;
;jo rUpa Ora AkAra meM 'alpa' ho, vaha 'CotA' hE.
;jise 'alpa' SabxoM meM kahA jAe, vaha 'saMkRipwa' hE. isameM vyavahAra kI ruKAI BI A jAwI hE - rUKe vyavahAra meM kama SabxoM meM bAwa karanA Ora Kula kara bAwa ne karanA SAmila howA hE. awaH aMgrejZI meM isa prasaMga meM BI 'short' kA prayoga howA hE.
;jo 'nirXAriwa' ke barAbara na ho vaha 'kama' yA 'pahale' hE. uxAharaNa 9 meM 'metaphorical'
;prayoga hE. yaha prayoga prAyaH 'samaya' ke saMxarBa meM howA hE waWA yahAz 'mahInA, xina, yA varRa Axi' vAswava meM kama nahIM howe para kama 'prawIwa' howe hEM.
;
;'short' Sabxa ke viBinna prayoga xeKa kara isakA mUla arWa 'alpa' liyA jA sakawA hE. jisase ki anya arWa nimna prakAra se sambanXiwa ho sakawe hEM
;
;anwarnihiwa sUwra ;
; 
;
;                    alpa
;                     |
;                ---------------------------------
;               |      |        |                |
;             vaswu     sWAna    kAla           SabxoM_meM{vyavahAra}
;              |           |--|    |             |
;       ------------------    |   alpakAlika     ruKAI_liye_hue
;       |       |        |    ----             
;      CotA   saMkRipwa  kama      |
;                               WodZA_pahale{sWAna}
;                               
;
;isaprakAra se 'short' Sabxa kisa prasaMga meM A rahA hE usake AXAra para isakA 'vaswu, sWAna, kAla' Axi kA arWa milawA hE. jEse 
;'short notice'  meM 'alpakAla kA notisa' hE. shortly xeKiye.
; 
;'short distance' 'alpa(sWAna kI) xUrI' hE.
;
;ina uxAharaNoM ke AXAra para isakA sUwra hogA -
; 
;sUwra : alpa`[>WodZA_pahale]
;
;sUwra meM 'alpa' ke sAWa '`' yaha bawAwA hE ki 'short' ke liye 'alpa' ke sAWa 'kuCa_anya arWa' BI judZe hEM. 
;
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short3
(declare (salience 4800))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 rest|vacation|distance|time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short3   "   ?id " WodZI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short3
(declare (salience 4800))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 rest|vacation|distance|time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short3   "   ?id " WodZI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short4
(declare (salience 4700))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 behaviour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidZacidZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short4   "   ?id " cidZacidZA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short4
(declare (salience 4700))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 behaviour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidZacidZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short4   "   ?id " cidZacidZA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short6
(declare (salience 4500))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 report|essay|synopsis|presentation|story)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short6   "   ?id " saMkRipwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short6
(declare (salience 4500))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 report|essay|synopsis|presentation|story)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkRipwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short6   "   ?id " saMkRipwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short11
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 intelligence|memory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short11   "   ?id " kamajora )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short11
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 intelligence|memory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short11   "   ?id " kamajora )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short12
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 intelligence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short12   "   ?id " alpa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short12
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 intelligence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short12   "   ?id " alpa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short13
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 notice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short13   "   ?id " alpakAlika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short13
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 notice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpakAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short13   "   ?id " alpakAlika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_short14
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 vowel|wave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laGu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   sub_samA_short14   "   ?id " laGu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_short14
(declare (salience 4100))
(id-root ?id short)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 vowel|wave)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laGu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " short.clp   obj_samA_short14   "   ?id " laGu )" crlf))
)
