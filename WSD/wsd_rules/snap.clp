
(defrule snap0
(declare (salience 5000))
(id-root ?id snap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAwkAlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snap.clp 	snap0   "  ?id "  wAwkAlika )" crlf))
)

;"snap","Adj","1.wAwkAlika/PZOrI/Asu"
;This work is too snap.
;
(defrule snap1
(declare (salience 4900))
(id-root ?id snap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id interjection)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAnawA_para_nikalanevAlA_AScarya_BAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snap.clp 	snap1   "  ?id "  samAnawA_para_nikalanevAlA_AScarya_BAva )" crlf))
)

;"snap","Interj","1.samAnawA_para_nikalanevAlA_AScarya_BAva"
;Snap! your bag is similar to mine.
;
(defrule snap2
(declare (salience 4800))
(id-root ?id snap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ASuciwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snap.clp 	snap2   "  ?id "  ASuciwra )" crlf))
)

;"snap","N","1.ASuciwra"
;I have a fine collection of holiday snaps.
;--,"1.wASa_ke_pawwoM_kA_eka_Kela"
;Snap is an entertaining game.
;
(defrule snap3
(declare (salience 4700))
(id-root ?id snap)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa_dZAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snap.clp 	snap3   "  ?id "  wodZa_dZAla )" crlf))
)

;"snap","V","1.wodZa_dZAlanA"
;He snapped his finger.
;--"2.xaMSa_karanA/kAtanA"
;The snake snapped the boy's feet.
;--"3.gurrAnA"
;The teacher snapped 'shut your mouth'.
;--"4.Poto_lenA"
;I snapped at the jumping boy.
;
;LEVEL 
;
;
;                     "sUwra" (nibanXa) 
;
;`snap' Sabxa ke viviXa prayoga--
;------------------------ 
;
;"snap","V","1.wodZa dZAlanA"   
;                ---- catakAnA < cataka 
;He snapped his finger.
;--"2.xaMSa karanA/kAtanA"    
;                ---- < catAka (Xvani-sAmya
;The snake snapped the boy's feet.
;--"3.JidakanA" 
;                ---- < catakAnA (Wappada Axi) < cataka
;The teacher snapped 'shut your mouth'.
;--"4.Poto lenA" 
;                ---- < catAka (Xvani-sAmya)
;I snapped at the jumping boy.
;
;"snap","N","1.ASuciwra"   
;                ---- < Poto lenA < catAka 
;I have a fine collection of holiday snaps.
;
;"snap","N","1.wASa ke pawwoM kA eka Kela" 
;                ---- < wodanA < catAka
;Snap is an entertaining game.
;
;"snap","Adj","1.wAwkAlika/PZOrI/Asu" 
;                ---- < catAka
;This work is too snap.
;
;"snap","Interj","1.samAnawA para nikalanevAlA AScarya BAva"  
;                ---- < catAka
;Snap! your bag is similar to mine.
;----------------------------------------------------------
;
;sUwra : catAka[>wASa_kA_Kela]
;---------------
;
;uparisWiwa vAkyoM ke AXAra para--
;--------------------------
;pahalA uxAharaNa uMgalI wodanA hE . (catakAnA) < catAka
;
;JidakanA . catAka- catakAnA ke anwargawa ho sakawA hE . jEse- Wappada yA daMdA catakAnA 
;prayoga meM hE . yahAz se yaha Jidakane ke arWa meM .
;
;wawkAla va vismaya kA arWa catAka- catakAnA se liyA jA sake . kAraNa- catakAnA yA catakanA
;sahasA huA xiKawA hE . isIse wawkAla va vismaya kA sambanXa jodA jA sakawA hE . 
;jEse hinxI meM `catAk' kA prayoga hE .         
; 
;
;
;sUwra-saMGaTaka waWya--
;-------------
;pUrA arWa-viswAra `catAka'- catakAnA Sabxa se lagawA hE . catakAne ke anwargawa saBI
;arWa samaJe jA sakawe hE . 
;
;catakane meM jo Xvani-sAmya Ora kRaNikawA hEM (catakane meM kRaNikawA(SIGrawA) bahuwa
;spaRta hE), usase arWa viswAra huA lagawA hE . 
;
;pahale uMgaliyoM kA catakanA . xaNda ke rUpa meM catakAnA Sabxa prayukwa hE . Wappada catakAnA
;
;daNde catakAnA Axi . isase Jidakane ke arWa meM prayoga . 
;
;ciwra lewe samaya catakane kA Sabxa va kRaNikawA spaRta howA hE . usase isa arWa 
;meM prayoga . 
;
;wASa ke Kela meM bIca bIca meM pawwoM ko catakAyA jAwA hE . krama ko BaMga karane hewu .
;Sabxa-sAmyawA va kRaNikawA isa kArya meM spaRta JalakawI hE . isa prakAra wASa ke pawwoM 
;ke Kela arWa meM Sabxa kA prayoga . 
;
;catakane kI kriyA sahasA(kRaNikawA meM) howI xIKawI hE . isIse wawkAla va vismaya 
;ke arWa meM prayoga .
;
; 
;
