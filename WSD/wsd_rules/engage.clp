
(defrule engage0
(declare (salience 5000))
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
(defrule engage1
(declare (salience 4900))
(id-root ?id engage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaswa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  engage.clp 	engage1   "  ?id "  vyaswa_ho )" crlf))
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
