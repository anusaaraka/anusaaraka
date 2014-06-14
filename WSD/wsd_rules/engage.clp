
(defrule engage0
(declare (salience 4000))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id engaging )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id ramaNIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  engage.clp  	engage0   "  ?id "  ramaNIya )" crlf))
)
;"engaging","Adj","1.ramaNIya"
;At present he is involved in an engaging work.
;

;@@@ Added by Pramila(BU) on 04-12-2013
;Rahul was engaged to Anjali.         ;sentence of this file
;   They were engaged only last month.              ;sentence of this file
;   piCale mahIne hI unakI sagAI huI WI.
(defrule engage2
(declare (salience 5000))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-to_saMbanXI  ?id ?id1)(kriyA-kAlavAcI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagAI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage2   "  ?id "  sagAI_ho )" crlf))
)


;@@@ Added by Pramila(BU) on 26-01-2014
;   They are engaged to be married.        ;sentence of this file
;   unakI SAxI karane ke liye sagAI huI hE
(defrule engage3
(declare (salience 5000))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 marry)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sagAI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage3   "  ?id "  sagAI_ho )" crlf))
)


;@@@ Added by Pramila(BU) on 04-12-2013
;   He has engaged a nurse to look after his mother.         ;sentence of this file
;   usane apanI mAz kI xeKaBAla ke lie eka narsa ko niyukwa kiyA hE.
(defrule engage4
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(saMjFA-to_kqxanwa  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage4   "  ?id "  niyukwa_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 26-01-2014
;   A labour has been engaged to plough the land.               ;sentence of this file
;   usane KewI karane ke lie eka kisAna ko niyukwa kiyA.
(defrule engage5
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage5   "  ?id "  niyukwa_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 04-12-2013
;   You could not keep him engaged for a long period.            ;sentence of this file
;   wuma use jyAxA xera waka vyaswa nahIM raKa sake.
(defrule engage6
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 keep)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyaswa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " engage.clp	engage6  "  ?id "  " ?id1 "  vyaswa_raKa  )" crlf))
)


;@@@ Added by Pramila(BU) on 04-12-2013
;We engaged ourselves in social work during vacation.          ;sentence of this file
;हमने अपने आपको अवकाश के दौरान समाज-कार्य में लगाया .
;'(kriyA-object  ?id ?)' is added on 06-02-2014
(defrule engage7
(declare (salience 5000))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage7   "  ?id "  lagA )" crlf))
)

(defrule engage8
(declare (salience 4000))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage8   "  ?id "  vyaswa_ho )" crlf))
)


;@@@ Added by Pramila(BU) on 06-02-2014
;It is love of learning a spirit of research and a zeal for the spread of knowledge that have impelled them to undertake the work in 
;which they have been engaged not love of gain.
;वे जिस कार्य में लगे हुए हैं उसकी प्रेरणा लाभ कमाने की लालसा नहीं बल्कि विद्या के उपार्जन के प्रति पर्रेम, शोध की भावना और ज्ञान के प्रचार का उत्साह है।
(defrule engage9
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage9   "  ?id "  laga )" crlf))
)
;default_sense && category=verb	svayaM_ko_bAzXa	0
;"engage","VT","1.svayaM_ko_bAzXanA"
;We engaged ourselves in social work during vacation.
;--"2.sagAI karanA"
;Rahul was engaged to Anjali.
;
;LEVEL 
;
;
;Headword : engage
;
;Examples --
;
;"engage" Sabxa ke viBinna prayoga :
;
;   "vacanabaxXa"
;   They were engaged only last month.
;   piCale mahIne hI unakI sagAI huI WI.
;
;   "niyukwa karanA"
;   He has engaged a nurse to look after his mother.
;   usane apanI mAz kI xeKaBAla ke lie eka narsa ko niyukwa kiyA hE.
;   A labour has been engaged to plough the land.
;   usane KewI karane ke lie eka kisAna ko niyukwa kiyA.
;  
;   "judZanA"
;   Teacher should be engaged with the students problems.
;   aXyApaka ko CAwroM kI samasyA se judZA honA cAhiye.
;   
;   "vyaswa_rahanA"
;   He is engaged with a client at the moment.
;   vaha isa samaya eka klAyaMta ke sAWa vyaswa hE.
;   I have been engaged otherwise.
;   mEM anya kArya meM vyaswa rahA.
;
;   "vyaswa_raKanA"
;   You could not keep him engaged for a long period.
;   wuma use jyAxA xera waka vyaswa nahIM raKa sake.
;   
;  "AkarRaka"
;   He has an engaging personality.
;   unakA eka AkarRaka byakwiwva hE
;   
;Upara xiye hue uxAharaNoM ko arWa ke AXAra para hama wIna hissoM meM bAzta sakawe hEM:
;
;A.1.sagAI honA 
;    --------
;   They are engaged to be married.
;   ve SAxI karane ke liye vacanabaxXa hE
;   
;B.niyukwa_karanA[honA] kAma pe lagA rahanA  
;  a.kAma meM lagAnA
;   You could not keep him engaged for a long period.
;   wuma use jyAxA xera waka vyaswa nahIM raKa sake.
;  b.vyaswa rahanA
;   I have been engaged otherwise.
;   mEM anya kArya meM vyaswa rahA.
;
;C.AkarRaka/AkarRaNa
;  ------------
;  1.AkarRaka
;   He has an engaging personality.
;   unakA eka AkarRaka vyakwiwva hE 
;
;kyA ina vAkyoM meM Apa ko koI sambanXa xiKAI xe rahA hE ?
;SAyaxa saBI vAkyoM meM 'bazXe_hone' kA BAva hE.
;
;agara hama "engage" kA arWa "AbaxXa" leM wo ? 
;
;Examples:
;AbaxXa   
;  They are engaged to be married .
;  ve SAxI karane ke liye vacanabaxXa hE  (baMXe hue hE yAnI AbaxXa hE)
;  He has engaged a nurse to look after his mother.
;  usane eka narsa ko apane mAz ki xeKaBAla ke lie niyukwa kiyA.
;               (kAma ke lie bAzXA hE yAnI AbaxXa hue).
;  A labour has been engaged to plough the land.
;  usane KewI karane ke lie eka kisAna ko niyukwa kiyA.
;               (kAma para baMXA huA yAnI AbaxXa huA)
;  Teacher should be engaged with the students problem.
;  aXyApaka ko CAwroM kI samasyAoM ko jAnanA cAhie
;             (jAnanA yAnI judZanA yAnI AbaxXa honA cAhie).
;  Indian Army has been engaged with the extremists since the last twenty years
;  BArawIya senA piCale bIsa sAloM se ugravAxiyoM se jUJa rahI hE.
;             (yuxXa meM baMXe hue yAnI jUJane meM AbaxXa hE).
;  He is engaged in his home work.
;  vaha apane Gara ke kAma meM vyaswa hE.  (kAma ke baMXana meM baMXe hue yAnI AbaxXa hE).
;  I have been engaged in the relif work.
;  mEM sahAyawA kArya mEM vyaswa hUz. (kAma kA baMXana meM baMXA huA yAnI AbaxXa huA)
;  You never engaged him for a long period.
;  wuma use jyAxA xera waka vyaswa nahIM raKa sakawe.
;            (eka sWAna para bAzXa ke raKanA yAnI AbaxXa karanA)
;  He has an engaging personality.
;  unakA eka AkarRaka byakwiwva hE
;       AkarRaka yAnI najara ko bAMXa kara raKanA yAnI AbaxXa karanA)
;
;ina uxAharaNoM se 'engage' Sabxa kA anwarnihiwa sUwra banawA hE:-
;
;AbaxXa (sagAI...anubaMXa...kAma pe raKanA....pahacAna karanA....vyaswa honA....AkarRaka)
;
;engaged to get married..engaged a nurse.. labour has been engaged...engaged with problems,
;engaged with extremists ... engaged in work... engaged in social work  
;engaging personality  
;
;sUwra : AbaxXa[>sagAI]
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_engage6
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 keep)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyaswa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " engage.clp   sub_samA_engage6   "   ?id " " ?id1 " vyaswa_raKa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_engage6
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 keep)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vyaswa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " engage.clp   obj_samA_engage6   "   ?id " " ?id1 " vyaswa_raKa )" crlf))
)
