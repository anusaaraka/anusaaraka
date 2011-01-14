
(defrule crash0
(declare (salience 5000))
(id-root ?id crash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XamAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crash.clp 	crash0   "  ?id "  XamAkA )" crlf))
)

;"crash","N","1.XamAkA"
;The crash occurred during a thunderstorm && the system has been down ever
;since
;
(defrule crash1
(declare (salience 4900))
(id-root ?id crash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Daha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crash.clp 	crash1   "  ?id "  Daha )" crlf))
)

;"crash","VI","1.DahanA"
;The branch crashed down on my car
;--"2.takarAnA"
;The car crashed through the glass door
;The plane crashed into the fields
;The terorists crashed the car into the gate of the palace
;--"3.animaMwriwa_AnA"
;My son's friends crashed our house last weekend
;Let's crash the party!
;--"4.kAma_karanA_banxa_kara_xenA"
;My computer crashed last night
;
;LEVEL 
;Headword : crash
;
;Examples --
;
;1.The branch crashed down on my car.
;yaha SAKa merI gAdZI para gira padI.
;2.The car crashed through the glass door.
;gAdZI kAzca ke xaravAje se BidZa kara nikala gaI.
;3.The plane crashed into the hills.
;vAyuyAna pahAdZo meM takarA kara gira gayA.
;4.My computer crashed last night
;kala rAwa ko merA kampyUtara bETa gayA.
;
;uparaliKiwa vAkyoM meM "crash" ke jo Binna lagawe arWa A raheM hEM, unameM vAswava meM
;kuCa samAnawA hE, jiwake kAraNa ina saBI arWoM ko hama saMbaMXiwa mAna sakawe hEM. 
;
;"crash" Sabxa kA prayoga jisa saMxarBa meM ho rahA hE, vaha hE, kisI vaswu ke takarA kara,
; tUtane Ora girane ke saMxarBa meM, Ora uparaliKiwa vAkya 1-3 meM BI "crash" kA
; prayoga isI saMxarBa meM ho rahA hE.
;
;kisI vaswu ke takarA kara tUtakara girane se "XadZAm-BadZAm" kI Xvani AwI hE. wo hama aba
;uparaliKiwa vAkya 1-3 meM "crash" Sabxa kA arWagrahaNa hama Xvani ke isa BAva se kara sakawe
;hEM.
;
;vAkya 4. meM "crash" kA jo arWa A rahA hE, use "crash" ke uparaliKiwa arWa se 
;saMbaMXiwa karanA kaTina lagawA hE, kyoM ki kompyUtara takarA kara tUtakara gira nahIM sakawA hE. 
;kinwu yaxi isa vAkya ke saMxarBa meM hama isa arWa kA lAkRaNika viswAra kareM wo isa 
;saMxarBa meM BI hama "crash" ke uparaliKiwa arWa kA arWagrahaNa kara sakawe hEM.
;
;wo aba hama "crash" ke lie sUwra isa prakARa xe sakawe hEM.
;
;anwarnihiwa sUwra ;
;
;takarAkara-tUtakara-giranA - takarAkara-tUtakara-girane kI Xvani - XadZAm-BadZAm
;  
;
;sUwra : XadZAm-BadZAma
;
;"crash","V","XadZAm-BadZAm"
